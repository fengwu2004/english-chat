#!/usr/bin/env bash

set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
repo_dir="$(CDPATH= cd -- "$script_dir/.." && pwd)"
limit="${1:-15}"

case "$limit" in
  ''|*[!0-9]*)
    echo "Usage: $0 [positive-error-target-limit]" >&2
    exit 2
    ;;
  0)
    echo "The target limit must be greater than zero." >&2
    exit 2
    ;;
esac

active_file="$repo_dir/vocabulary/active-phrasal-verbs.md"
error_file="$repo_dir/vocabulary/error-pool.md"
mastered_file="$repo_dir/vocabulary/mastered.md"
speaking_log="$repo_dir/progress/speaking-log.md"
output_file="$script_dir/voice-session-pack.md"

review_pass="$({
  sed -nE 's/.*wrong-answer review, pass ([0-9]+).*/\1/p' "$speaking_log"
} | tail -n 1)"
review_pass="${review_pass:-1}"

tested_tmp="$(mktemp)"
targets_tmp="$(mktemp)"
trap 'rm -f "$tested_tmp" "$targets_tmp"' EXIT

awk -F'|' -v pass="$review_pass" '
  index($3, "wrong-answer review, pass " pass) {
    targets = $5
    count = split(targets, items, ";")
    for (i = 1; i <= count; i++) {
      gsub(/^[[:space:]]+|[[:space:]]+$/, "", items[i])
      if (items[i] != "") print items[i]
    }
  }
' "$speaking_log" | sort -u > "$tested_tmp"

selected=0
while IFS='|' read -r _ expression date task error_type note _; do
  expression="$(printf '%s' "$expression" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')"
  error_type="$(printf '%s' "$error_type" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')"
  note="$(printf '%s' "$note" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')"

  if [ -z "$expression" ] || [ "$expression" = "Expression" ] || [ "$expression" = "---" ]; then
    continue
  fi
  if grep -Fqx -- "$expression" "$tested_tmp"; then
    continue
  fi

  printf '| %s | %s | %s |\n' "$expression" "$error_type" "$note" >> "$targets_tmp"
  selected=$((selected + 1))
  if [ "$selected" -ge "$limit" ]; then
    break
  fi
done < "$error_file"

active_count="$(awk '/^-   /{count++} END{print count+0}' "$active_file")"
error_count="$(awk -F'|' 'NR > 8 && /^\|/ && $2 !~ /---/ {count++} END{print count+0}' "$error_file")"
mastered_count="$(awk -F'|' 'NR > 8 && /^\|/ && $2 !~ /---/ {count++} END{print count+0}' "$mastered_file")"
generated_at="$(date '+%Y-%m-%d %H:%M %Z')"

{
  printf '# Voice Session Pack\n\n'
  printf -- '- Generated: %s\n' "$generated_at"
  printf -- '- Current wrong-answer review pass: %s\n' "$review_pass"
  printf -- '- Active targets remaining: %s\n' "$active_count"
  printf -- '- Error-pool targets remaining: %s\n' "$error_count"
  printf -- '- Mastered records: %s\n\n' "$mastered_count"

  printf '## Coach-only rules\n\n'
  printf -- '- Do not reveal target expressions before the learner attempts them.\n'
  printf -- '- Test every listed target at most once in this pass.\n'
  printf -- '- A natural synonym does not count as successful target recall.\n'
  printf -- '- Use varied contexts rather than copying old evidence sentences.\n'
  printf -- '- After controlled review, run role-play and target-free conversation.\n\n'

  printf '## Remaining active targets — test before error review\n\n'
  if [ "$active_count" -eq 0 ]; then
    printf 'None.\n\n'
  else
    awk '/^-   /{sub(/^-   /, "- "); print}' "$active_file"
    printf '\n'
  fi

  printf '## Untested error-pool targets for this Voice session\n\n'
  printf '| Target | Previous error type | Previous note |\n'
  printf '|---|---|---|\n'
  if [ "$selected" -eq 0 ]; then
    printf '| None | — | The current review pass has no untested targets left. |\n'
  else
    cat "$targets_tmp"
  fi

  printf '\n## Required output\n\n'
  printf 'End the session with the exact report format specified in the Project instructions.\n'
} > "$output_file"

echo "Generated $output_file with $active_count active target(s) and $selected error-pool target(s)."
