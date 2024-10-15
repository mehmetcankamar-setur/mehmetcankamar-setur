# heavily inspired by https://gist.github.com/mtbiker-s/b309cf51cdd06ce86241e81f95f2e4bd#file-gitprofileswitch-sh

DARK_GREEN='\033[0;32m'
DARK_BLUE='\033[0;34m'
DARK_RED='\033[0;31m'
DARK_YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${DARK_BLUE}Switching git user profile${NC}"
echo
echo -e "${DARK_YELLOW}Current git profile${NC}"

git config -l | grep -E '^(user\.email|user\.name)' | while read -r line; do
    if [[ $line == *"user.email"* ]]; then
        echo -e "${DARK_BLUE}$line${NC}"
    elif [[ $line == *"user.name"* ]]; then
        echo -e "${DARK_BLUE}$line${NC}"
    fi
done

echo -e "${DARK_GREEN}Please enter which profile to use 'setur' or 'me'${NC}"
read profileToUse

if [[ $profileToUse == "setur" ]]; then
    echo -e "${DARK_RED}Setting git profile to access mehmetcankamar-setur${NC}"
    # Don't forget to change these 2 lines
    git config --global user.email "myworkemail@myworkemail.com.bla"
    git config --global user.name "Mehmet Can Kamar"
else
    echo -e "${DARK_RED}Setting git profile to access mehmetcankamar${NC}"
    # Don't forget to change these 2 lines
    git config --global user.email "mypersonalemail@mypersonalemail.com.bla"
    git config --global user.name "Mehmet Can Kamar"
fi

echo -e "${DARK_GREEN}git profile has been switched to use the profile - ${DARK_RED}$profileToUse${NC}."

# Yalnızca user.email ve user.name ayarlarını göster ve renklendir
git config -l | grep -E '^(user\.email|user\.name)' | while read -r line; do
    if [[ $line == *"user.email"* ]]; then
        echo -e "${DARK_BLUE}$line${NC}"
    elif [[ $line == *"user.name"* ]]; then
        echo -e "${DARK_BLUE}$line${NC}"
    fi
done
