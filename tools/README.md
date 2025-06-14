// Balena Etcher
ffmpeg -i sun.ogg sun.wav
ffmpeg -i sun.wav -f s16le -acodec pcm_s16le -ar 16000 sun.raw
cp sun.raw song.iso