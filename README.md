# squares

This module provides two commands and two command handlers, as well as two
Metafun macros:

1. `\magicsquare` typesets a magic square.
2. `\latinsquare` typesets a (random) Latin square.
3. `\setuplatinsquare`
4. `\setupmagicsquare`

`\latinsquare` understands the following set of parameters.

```tex
\setuplatinsquare
  [            n=5,
            size=2em,
     alternative=none,
   rulethickness=.5bp]
```
```
```

`lmt_latinsquare` has a similar interface:

```metapost
picture p;
p := image(
  lmt_latinsquare [
                n = 5,
             size = 2EmWidth,
      alternative = "none",
    rulethickness = .5bp
  ];
);
```
```
```

`\magicsquare` understands the following set of parameters:

```tex
\setupmagicsquare
  [            n=5,
            size=2em,
     alternative=none,
        rotation=0,
         reverse=none,
   rulethickness=.5bp]
```

`lmt_magicsquare` has a similar interface:

```metapost
picture p;
p := image(
  lmt_magicsquare [
               n = 5,
            size = 2EmWidth,
     alternative = "none",
        rotation = 0,
         reverse = "none",
   rulethickness = .5bp
  ];
);
```
```
```

_Caveat emptor_: this module is only for ConTeXt LMTX. I no longer use ConTeXt
MKIV, so no support is provided, sorry. Moreover, I'm using cutting-edge
features, such as new macro extensions. An updated distribution is recommended.
