# git-semantics
Git hook to ensure semantic commit messages. Forked from https://github.com/kewitz/git-semantics and adopted to use at some project.

You can install this only on specific projects running `./install.sh path/to/a/repo`


#### Emoji

Optionally, you can use the `commit-emoji.sh` script to add some emoji locally to your git logs.

1. Add the `commit-emoji.sh` script somewhere in your path (I use `~/scripts/`)
2. Edit your .gitconfig and set it as your pager

```
[core]
  pager = ~/scripts/commit-emoji.sh | less --raw-control-chars -FXS -x2
```


#### Example
```
leo@sputnik:~/Code/git-semantics$ git commit -am "teste"
Please use semantic commit messages:
feat[(scope)]: add hat wobble #number
^--^ ^--*--^   ^------------^ -> Summary in present tense.
 *      *-> [optional]: Scope of the commit.
 *-> Type: chore, docs, feat, fix, merge, pipe, refact, style, test or wip.
leo@sputnik:~/Code/git-semantics$ git commit -m "feat: add installer #123"
[master 6333498] feat: add installer #123
 1 file changed, 23 insertions(+)
 create mode 100755 install.sh
```



#### References

1. https://seesparkbox.com/foundry/semantic_commit_messages
2. http://karma-runner.github.io/0.10/dev/git-commit-msg.html
3. https://github.com/kewitz/git-semantics

#### License
Code released under the Beer-Ware license.
```
THE BEER-WARE LICENSE:
As long as you retain this notice you can do whatever you want with this stuff. If you meet any contributor some day, and you think this stuff is worth it, you can buy him a beer in return.
You can check the people who contributed to this on https://github.com/kewitz/git-semantics/graphs/contributors.
```
