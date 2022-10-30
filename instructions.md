# Scoop Installation

[scoop.sh](https://scoop.sh)

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time

irm get.scoop.sh | iex
```

Then install 
* git
* R

```
scoop install git
scoop install r
```

To install Rstudio, we need to add the extras bucket

```
scoop bucket add extras
```

Then we can install Rstudio

```
scoop install rstudio
```

Now, clone this repository to your preferred location

```
git clone https://github.com/snakewizardd/pdf_counter_r.git
```

If you have the ability to run Docker, it is advisable, as this is a fully reproducible, portable, and destructible platform.

If not, simply install the packages in [pdf_program.R](pdf_program.R) and get working locally.