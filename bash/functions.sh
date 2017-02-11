## ============================================================================
##                               Helper Functions
## ============================================================================

setup_newsenv()
{
    source /bb/bin/news_env.sh
    source /bb/bin/oracle.client
}

setup_newsenv64()
{
    source /bb/bin/news_env64.sh
    source /bb/bin/oracle.client64
}

run_anaconda()
{
    source /bb/news/analytics/tools/etc/na_tool.rc
    use_anaconda 2
}

pythontf()
{
    run_anaconda
    export PYTHONPATH=$PYTHONPATH:/bb/news/analytics/tools/opt/install/anaconda2-2.2.0/lib/python2.7/site-packages/
    export base=/bb/news/analytics/tools/build/
    LD_LIBRARY_PATH=/bb/news/analytics/tools/lib64/:${base}/tensorflow/tensorflow/tmp/libc6_2.17/lib/x86_64-linux-gnu/ ${base}/tensorflow/tensorflow/tmp/libc6_2.17/lib/x86_64-linux-gnu/ld-2.17.so /bb/news/analytics/tools/opt/install/anaconda2-2.2.0/bin/python
}

clone ()
{
    repo="$1"
    git clone bbgithub:machine-learning/${repo}
}

pr ()
{
    #org="$1"
    #if [ -z "$org" ]; then
    org="machine-learning"
    #fi
    branch="$(git symbolic-ref -q HEAD)"
    branch="${branch##refs/heads/}"
    repo=$(basename `git rev-parse --show-toplevel`)
    myOrg=$(git remote -v | grep 'push' | cut -d':' -f2 | cut -d'/' -f1)
    if [ -z "$branch" ]; then
        echo "Unable to find current branch" >&2
        return 1
    fi
    if [ -z "$repo" ]; then
        echo "Unable to find current repo" >&2
        return 1
    fi

    bbgh create-pr ${myOrg}/${repo}:${branch} ${org}/${repo}:master "$@"
}

pullreq ()
{
 org="$1"
 if [ -z "$org" ]; then
     org="machine-learning"
 fi
 branch="$(git symbolic-ref -q HEAD)"
 branch="${branch##refs/heads/}"
 repo=$(basename `git rev-parse --show-toplevel`)
 myOrg=$(git remote -v | grep 'push' | cut -d':' -f2 | cut -d'/' -f1)
 if [ -z "$branch" ]; then
   echo "Unable to find current branch" >&2
   return 1
 fi
 if [ -z "$repo" ]; then
   echo "Unable to find current repo" >&2
   return 1
 fi
 tmpfile=$(mktemp ~/mbig/tmp/pr.XXXXXX)
 cp ~/.bbgh-pr.template ${tmpfile}
 ${EDITOR:-vim} ${tmpfile}
 bbgh create-pr ${myOrg}/${repo}:${branch} ${org}/${repo}:master --file ${tmpfile}
 rm -f ${tmpfile}
}

