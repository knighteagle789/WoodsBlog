## Contributing

All changes are submitted as pull requests from personal forks. Before you do anything else, review the Initial Setup document and fork the canonical repository. Any changes will need to be pushed to one's fork first and then a pull request will be issued to the canonical repo.

### Working a Feature, Bug or Hotfix

_Note:  if working a bug or hotfix, replace "feature" with "bug" or "hotfix" as appropriate._

#### Command Line

  * Starting
    1. `git remote update -p`
    1. `git merge upstream/development`
    1. `git push`  (These first three steps ensure that your repo is up to date with any new changes that may have come in since you last worked on this repo.)
    1. `git checkout upstream/development -b feature/<feature-name> --no-track` (Creates your new branch. `--no-track` ensures that you don't accidentally try to push to `development`.)
    1. `git push --set-upstream origin feature/<feature-name>` (Pushes your new branch up to your fork on GitHub. `--set-upstream` configures future pushes to go to the feature branch in your personal fork.)
  * Working
    1. Make some changes.
    1. `git add .` (Do a git add anytime you complete a logical chunk of work.)
    1. `git commit -m "Your commit message here"`
    1. `git push` (You don't _need_ to do this on every commit, but you should.  It ensures your work is backed up on GitHub.)
    1. Repeat.
  * Finishing
    1. `git remote update -p` (Pull in any changes from other developers that may have been merged into develop while you were working.) 
    1. `git merge upstream/development` (Deal with any merge conflicts you may encounter.)
    1. `git push`
    1. Go to the [canonical repository][canonical] on GitHub.
    1. You should see an informational nugget with your recently pushed branch.
    1. Click "Compare & pull request" and complete the form.
    1. Assign the PR to a teammate for review and approval.
    1. When the PR is merged, the feature branch should be deleted since it is no longer needed as the code now lives in `development`.
  * Reset _Once your PR has been merged into the `development` branch_
    1. `git checkout development` to go back to your development branch.
    1. `git remote update -p` (Update your local `development` branch to match the `development` branch - including your changes!)
    1. `git merge upstream/development` (Merge said changes.)
    1. `git push` (Update the `development` branch in your personal fork.)
    1. `git branch -d feature/<feature-name>` (Delete your local feature branch. Since it's been deleted on GitHub.)
    1. `git branch -a` (This will show you all branches that exist on your local. You can delete any rogue branches that you no longer need and may have forgotten to delete.)
    1. Now you're ready to go to the "Starting" section above once again.  Rinse & repeat!

### Git Command Explanations

  * `git remote update -p`: Updates you locally cached information about the state of all remote repositories. `-p` (or `--prune`) tells Git to remove local references to branches that have disappeared from remotes.
  * `git checkout <remote branch> -b <local branch> --no-track`: Checks out the repository state as it exists in the remote branch and creates a new branch based on that revision. `--no-track` prevents Git from automatically setting up tracking against the remote branch, which could result in pushes to unintended branches.
  * `git push --set-upstream origin <local branch>`: Pushes the local branch to your personal fork and sets up tracking so subsequent pushes automatically go to the new branch in your personal fork (`--set-upstream` is what sets up tracking).
  * `git add .`: Takes all modifications, additions, and removals and stages them for commit.
  * `git commit`: Commits staged changes to the repository.
  * `git push`: Push any new commits to your personal fork (assuming you used `--set-upstream` to configure tracking).
  * `git merge upstream/<master|development>`: Merges any changes to the specified branch that are not included in your working branch.
  