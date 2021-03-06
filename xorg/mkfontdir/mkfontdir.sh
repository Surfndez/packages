#!/bin/bash

sort -r | while read -r d; do
	[[ -d $d ]] || continue
	mkfontscale "$d"
	mkfontdir "$d"
	find "$d"fonts.{scale,dir} -maxdepth 0 -size -3c -delete
	rmdir --ignore-fail-on-non-empty "$d"
done
