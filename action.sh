git clone https://github.com/TermuxDad/livegram /root/innexia
cp innexiamusic/.env /root/innexia/Livegram
cd /root/innexia
docker build . --rm --force-rm --compress --pull --file Dockerfile -t innexiamusic
docker run --privileged --env-file .env --rm -i innexiamusic
