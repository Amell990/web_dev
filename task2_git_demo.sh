# Step 1: Initialize repository
git init my-demo-repo
cd my-demo-repo

# Step 2: Configure Git user
git config user.name "Your Name"
git config user.email "your.email@example.com"

# Step 3: Create a file and add content
echo "Hello, Git Version Control!" > example.txt

# Step 4: Stage file
git add example.txt

# Step 5: Commit changes
git commit -m "Initial commit with example.txt"

# Step 6: Add remote repository (GitHub)
git remote add origin https://github.com/YourUsername/my-demo-repo.git

# Step 7: Push to GitHub
git push -u origin main

# Step 8: Inspect commit history
git log --oneline

# Step 9: Inspect Git objects
git ls-tree HEAD
git cat-file -p <commit-hash>
git cat-file -p <blob-hash>
