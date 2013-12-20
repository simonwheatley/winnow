#!/bin/bash
# Filter the good emails, i.e. not in a bad domain, into the good-emails.csv file

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

IFS=$'\r\n'
BAD_DOMAINS=$(cat ./bad-domains.csv)
EMAILS=$(cat ./emails.csv)

# Blank the good emails file
cp /dev/null ./good-emails.csv

# Loop over each email
for EMAIL in ${EMAILS[@]}; do
	# echo "Checking $EMAIL"
	# Check the email for each of the bad domains
	for BAD_DOMAIN in ${BAD_DOMAINS[@]}; do
		if [ ! "${EMAIL/$BAD_DOMAIN}" = "$EMAIL" ] ; then
			# echo "${BAD_DOMAIN} was found in ${EMAIL}"
			# If a bad domain is found, move on to the next file
			break 2;
		fi
	done
	echo "Appending $EMAIL"
	echo $EMAIL >> ./good-emails.csv
done



