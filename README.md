# elm-workshop
Elm workshop for the absolute beginner.

# Preparation

## Clone this repository

Clone this repository to have it on the side for reference. The presentation 
is included. There may be updates later that you may wish to pull.

```
git clone https://github.com/crispab/elm-workshop
```

## Install Elm

Follow the instructions of the official guide to install 
Elm: https://guide.elm-lang.org/install.html

Do not forget to set up your IDE for Elm development. I prefer
IntelliJ but you may think differently.

### Verify installation
```
> elm --version
 0.19.0
```

## Install elm-live

This is a convenient way of getting hot reload while 
developing. For details see https://github.com/wking-io/elm-live

`npm install --global elm elm-live` 


## Create GitHub repositories

We will publish this on GitHub pages so you need two repositories.

### Github pages repository

Unless you already have one, create a GitHub repository named
after your username.

`<username>.github.io`

### Your project repository

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


### Copy the workshop starter to you project

```
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
git push
```
Check `http://<username>.github.io/<project-repository>`


