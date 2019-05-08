# elm-workshop
Elm workshop for the absolute beginner.

## Preparation

### Install Elm

Follow the instructions of the official guide to install 
Elm: https://guide.elm-lang.org/install.html

#### Verify installation
```
> elm --version
 0.19.0
```

### Create GitHub repositories

We will publish this on GitHub pages so you need two repositories.

#### Github pages repository

Unless you already have one, create a GitHub repository named
after your username.

`<username.github.io`

### Your workshop repository

The result of your workshop will be published under 
`http://<username>.github.io/<workshop-repository-name>`

Create a repository at GitHub **under the user name you just used** 
for your workshop. Use any name or use `elm-noob`. ;)

Clone the repository
```
git clone https://github.com/<username>/<workshop-repository-name>
cd <workshop-repository-name>
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

#### Enable Github pages for your workshop

Go to the workshop repository on GitHub. 
To the top right, you'll find `Settings`.
Click on it and scroll down until you find `GitHub pages`. 

Locate the drop-down in the `Source` section and select
`master branch`.

After a short delay you should be able to see "Hello Elm"
at `http://<username>.github.io/<workshop-repository-name>`.



