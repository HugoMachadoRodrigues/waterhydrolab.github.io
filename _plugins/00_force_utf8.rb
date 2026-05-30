# frozen_string_literal: true
#
# Force UTF-8 as the default file encoding for the whole build.
#
# Some CI build environments (e.g. Cloudflare Workers Builds) start with the
# locale unset, so Ruby's Encoding.default_external is US-ASCII. al_folio_core's
# legacy-pattern scanner reads files with raw `IO.foreach` + `String#match?`,
# which then crashes on any file containing non-ASCII bytes (em dashes "—",
# middots "·", accented letters, emoji) with:
#     invalid byte sequence in US-ASCII (ArgumentError)
#
# The "00_" filename prefix makes this load first, before Jekyll reads the site
# and triggers that hook, so every build (any host, any locale) is UTF-8 safe.
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
