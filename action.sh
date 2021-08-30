git clone https://github.com/MrSammyXD/GitGram /root/innexia
cp gitgram/.env /root/gitgram
cd /root/gitgram
docker build . --rm --force-rm --compress --pull --file Dockerfile -t gitgram
docker run --privileged --env-file .env --rm -i gitgram
