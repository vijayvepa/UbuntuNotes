echo "0.Setting up mod KVM"
sh 0.mod.sh

echo "1.Setting up index"
sh 1.index.sh

echo "2. Add official Docker GPG Keyring"
sh 2.keyring.sh

echo "3. Add Repo"
sh 3.repo.sh

echo "4. Install Docker Engine"
sh 4.install-engine.sh

echo "5. Verify Install"
sh 5.verify.sh