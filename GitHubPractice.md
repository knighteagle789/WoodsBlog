# Git branching model

This Github repository will follow the guidelines that have been outlined in the Git Branching Model for GitHub flow.

There are 2 main branches:

* master
* development

These branches are the only 2 long living branches for the repository.  All other branches should fork from either one of these.

There could potentially be 1 or more of the following branches:

* Feature
* Release
* Hotfix

Feature Branches:

* Branches off the Development branch
* Merge back to the Development branch
* Naming Convention:
  * feature/name
  * cannot contain master, development, release/, or hotfix/
* Branches live in the developer repos only, not in the origin

Release Branches:

* Branches off the Development branch
* Merge back to the Development branch
* Naming Convention:
  * release/version.number

Hotfix Branches:

* Branches off the Master branch
* Merge back to the Development and Master branch
* Naming Convention:
  * hotfix/version.number.fix
