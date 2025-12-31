grep -a -E -o ".{0,50}NSAllowsArbitraryLoadsInWebContent.{0,50}" ./reversed-Info.plist > output.txt
grep -a -E -o ".{0,50}hasOnlySecureContent.{0,50}" ./MASTestApp >> output.txt
