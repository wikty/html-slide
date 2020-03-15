---
title:  'This is the title'
author:
- Xiao Wenbin
- Xiaowenbin
date: March 22, 2005
subtitle: "This is the subtitle"
keywords:
- a
- b
- c
abstract: This a an abstract.
description: |
    This is a long
    description.

    It consists of two paragraphs
lang: zh-CN
revealjs-url: static/js/reveal.js-3.9.2
---

# In the morning

## Getting up

- Turn off alarm
- Get out of bed

## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

------------------

![](static/img/lufei.jpg)

## Going to sleep

- Get in bed
- Count sheep

# Tutorial

## Structuring the slide show

By default, the *slide level* is the highest heading level in the hierarchy that is followed immediately by content, and not another heading, somewhere in the document. In the example above, level-1 headings are always followed by level-2 headings, which are followed by content, so the slide level is 2. This default can be overridden using the `--slide-level` option.

------------------

The document is carved up into slides according to the following rules:

- A horizontal rule always starts a new slide.
- A heading at the slide level always starts a new slide.
- Headings *below* the slide level in the hierarchy create headings *within* a slide.
- Headings *above* the slide level in the hierarchy create “title slides,” which just contain the section title and help to break the slide show into sections. Non-slide content under these headings will be included on the title slide (for HTML slide shows) or in a subsequent slide with the same title (for beamer).
- A title page is constructed automatically from the document’s title block, if present. (In the case of beamer, this can be disabled by commenting out some lines in the default template.)

------------------

These rules are designed to support many different styles of slide show. If you don’t care about structuring your slides into sections and subsections, you can just use level-1 headings for all each slide. (In that case, level-1 will be the slide level.) But you can also structure the slide show into sections, as in the example above.

------------------

Note: in reveal.js slide shows, if slide level is 2, a two-dimensional layout will be produced, with level-1 headings building horizontally and level-2 headings building vertically. It is not recommended that you use deeper nesting of section levels with reveal.js.

## Incremental lists

By default, these writers produce lists that display “all at once.” If you want your lists to display incrementally (one item at a time), use the `-i` option. If you want a particular list to depart from the default, put it in a `div` block with class `incremental` or `nonincremental`. So, for example, using the `fenced div` syntax, the following would be incremental regardless of the document default:

------------------

```
::: incremental

- Eat spaghetti
- Drink wine

:::
```

------------------

or

```
::: nonincremental

- Eat spaghetti
- Drink wine

:::
```

------------------

::: incremental

- Eat spaghetti
- Drink wine

:::

## Inserting pauses

You can add “pauses” within a slide by including a paragraph containing three dots, separated by spaces:

```
# Slide with a pause

content before the pause

. . .

content after the pause
```

Note: this feature is not yet implemented for PowerPoint output.

## Styling the slides

All [reveal.js configuration options](https://github.com/hakimel/reveal.js#configuration) can be set through variables. For example, themes can be used by setting the `theme` variable:

```
-V theme=moon
```

Or you can specify a custom stylesheet using the [`--css`](https://pandoc.org/MANUAL.html#option--css) option.

## Speaker notes

Speaker notes are supported in reveal.js and PowerPoint (pptx) output. You can add notes to your Markdown document thus:

```
::: notes

This is my note.

- It can contain Markdown
- like this list

:::
```

To show the notes window in reveal.js, press `s` while viewing the presentation. Speaker notes in PowerPoint will be available, as usual, in handouts and presenter view.

Notes are not yet supported for other slide formats, but the notes will not appear on the slides themselves.

## Columns

To put material in side by side columns, you can use a native div container with class `columns`, containing two or more div containers with class `column` and a `width` attribute:

```
:::::::::::::: {.columns}
::: {.column width="40%"}
contents...
:::
::: {.column width="60%"}
contents...
:::
::::::::::::::
```

------------------

:::::::::::::: {.columns}
::: {.column width="40%"}
contents...
:::
::: {.column width="60%"}
contents...
:::
::::::::::::::