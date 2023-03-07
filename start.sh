if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mrsns2503/FOX_JOKER /FOX_JOKER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FOX_JOKER
fi
cd /FOX_JOKER
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
