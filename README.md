# THIS IS OBVIEWS
-----
[Aide git flow](https://github.com/SegoleneAl/git_how_to)

-------

# obviews-dev

git remote add obviews-dev https://git.heroku.com/obviews-dev.git

git config heroku.remote obviews-dev

heroku logs --tail




# obviews-stage

git remote add obviews-stage https://git.heroku.com/obviews-stage.git

heroku logs --tail --remote obviews-stage

heroku restart --remote obviews-stage

heroku pg:reset DATABASE --remote obviews-stage

penser à confirmer avec `obviews-stage`

heroku run rake db:migrate --remote obviews-stage

quand on push


# obviews

git remote add obviews https://git.heroku.com/obviews.git

