# Pockie Pirates (English) - Preservation & Restoration Project

This project is dedicated to restoring and preserving the classic 2012 Flash-based web game **Pockie Pirates** (also known as *Xiaoxiao Haizeiwang*). After the official servers were shut down, much of the game's assets and server logic became "Lost Media." This repository aims to rebuild a functional server using Python and original English assets.

## Current Status: Alpha
The project is currently in the early stages of restoration. 

### What Works:
- [x] **Python Server Core:** `server.py` handles basic connections.
- [x] **Login System:** Successfully authenticating and loading player data.
- [x] **Character Selection:** Players can create and select characters.
- [x] **World Map:** Navigation to the first world map is functional.

### What's Missing / In Progress:
- [ ] **Battle System:** Core combat logic and reward calculation.
- [ ] **Tavern/Recruitment:** The UI for hiring crew members and RNG logic.
- [ ] **Asset Library:** Many character and skill sprites are still missing.
- [ ] **Quest System:** Implementation of level-based missions.

## 🛠 Tech Stack
- **Server:** Python 3.x
- **Database:** MySQL
- **Client:** Original Flash (SWF) - Runs via Flash Player SA.
- **Language:** English (Restoring the original JoyGames localization).

## 📦 Installation & Running

1. Run the server: `python server.py`.
2. Open the file `main.swf` using **Flash Player SA**. (\pockiepirates\pockiepirates\onepiece\main.swf)
3. Point the client to your local server IP (default is 127.0.0.1).

## 🤝 How to Contribute
If you were a fan of the game and happen to have old cache files, screenshots of UI layouts, or experience with ActionScript 3 / Python, your help is welcome! 

Special thanks to the community for keeping the memories alive.
