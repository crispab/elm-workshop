# elm-workshop
Elm workshop for the absolute beginner.

# Preparation

Do this before the workshop. You set up an Elm development environment with 
your favourite IDE. 
You set up repositories to enable publishing your app to GitHub pages.
You run your first Elm app.

## Clone this repository

Clone this repository to have it on the side for reference. The presentation 
is included. There may be updates later that you may wish to pull.

```
git clone https://github.com/crispab/elm-workshop
```
## Set up your development environment

### Install the Elm platform

Follow the instructions of the official guide to install 
Elm: https://guide.elm-lang.org/install.html

Do not forget the section where you set up your IDE for Elm development. 

### Install elm-live

This is a convenient way of getting hot reload while 
developing. For details see https://github.com/wking-io/elm-live

`npm install --global elm elm-live` 

### Install elm-format

Your IDE might use this to format your Elm code but you can also use it 
on the command line. 

`npm install -g elm-format`

## Set up publishing to GitHub pages

We will publish this on GitHub pages so you need two repositories.
One root repository and one for this project.

### Create the Github pages repository

Unless you already have one, create a GitHub repository named
after your username.

`<username>.github.io`

### Create your project repository

The result of your project will be published under 
`http://<username>.github.io/<project-repository>`

Create a repository at GitHub **under the user name you just used** 
for your project. 

Clone the repository
```
git clone https://github.com/<username>/<project-repository>
cd <project-repository>
```

In that repository, create a landing page `index.html`
```
<html>
<body>
<h1>Hello Elm</h1>
</body>
</html>
```
Add the file to git, commit and push.

```
git add index.html
git commit -m "Initial" index.html
git push
```

### Enable Github pages for your project

Go to the project repository on GitHub. 
To the top right, you'll find `Settings`.
Click on it and scroll down until you find `GitHub pages`. 

Locate the drop-down in the `Source` section and select
`master branch`.

After a short delay you should be able to see "Hello Elm"
at `http://<username>.github.io/<project-repository>`.


## Run your first Elm app

### Copy the workshop starter to you project

```
cd <project-repository>
elm init # creates an elm.json file and src directory
cp ../elm-workshop/index.html .
cp ../elm-workshop/src/Main.elm src
cp ../elm-workshop/*.sh .
```
### Run with elm-live

`sh run.sh`

Page is served on http://localhost:8000.

### Build and publish to Github pages
```
sh build.sh
git add .
git commit -m 'adding changes'
git push origin master
```
Check `http://<username>.github.io/<project-repository>`


