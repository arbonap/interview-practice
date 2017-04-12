# Accessibility concerns
  ## In general: As you may have guessed by now, adhering to semantic structures that HTML already offers today will get you a long long way towards accessible web content.

 - label form fields
 - use landmarks, such as headers, footers, navs, mains to help better navigation
 - screen-readers use these to navigate
 - avoid disruptive pop-ups --> they are difficult for low-vision users to exit out of
 - label input, select, and text area elements need associated labeled elements
 - emphasize using _buttons_
    - do __not__ fallback on using extra fancy JavaScript (i.e. clickable span
      or div elements, as this will fuck with screen-readers)
 - alt attribute (not an alt tag, because it's not an HTML tag)
 - utilize 6 label heading structure. The DOM at its ❤️ is a document, after all
    - the heading elements give you a structure that screen-readers depend on for logical, easy to follow navigation for the user
    - utilize HTML5's __semantic__ markup (__semantic__, i.e., the structure is close to its meaning)
- ARIA standard
### Color: for color-blind or low-vision users, use high-color contrasts
- Avoid utilizing colors as the only signifier for _!important_ notifications, or alerts
- avoid brightly flashing colors, and marquees (low-vision, seizure/epileptic population)
- do not disable _pinch-to-zoom_ gesture on mobile for low-vision users
- The Web Content Accessibility Guidelines define as a success criteria to have a contrast ratio of 4.5:1 on main content text to its background.
- Use appropriate input types for e-mail, URL, phone number etc.

## Localization i18n-ification

- “Resource” All Of Your Strings (including the punctuation)
  - i.e., utilizing i18n gem and putting all of the translations into an `es.yml` file
- Never concatinate strings client-side, always do it server-side

- Never Sort strings in the browser
- use `utf-8`, like so:
- ``` <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
```
- never hardcore dates
- give strings extra space to shrink and grow, since the length of phrases can drastically be different. Example: German is a very long
- Don't hard-code the order of people's names
- take into account right-to-left languages, such as Hebrew or Arabic.
- CSS has this:
``` input {
    direction: rtl;
}
```
- HTML has this:
```
<html dir="rtl">
```
- use a full-locale, instead of a general language-- a country's context matters due to unique spellings, etc.
-

## Responsive web-design
- Add `12` or `24`-based column grid
- `12` is a nice number. `24` is definitely more than enough, maybe overkill
  - Based on a `12` column grid, `100 / 12 = 8.33`, so the `base column width` is `8.33%`
  - that means...
  ```col-12 {
    width: 100%;
    }```,

    ```col-6 {
      width: 50%;
    }```,

    ```col4 {
      width: 33.33%;
    }```,

    ```col-3 {
      width: 25%;
    }```
    ```col-1 {
      width: 8.33%
    }```

- Add responsiveness with media-queries. Create breakpoints, where the design of your app renders differently based on screen-size.
  -phone!
  - many companies are emphasizing `mobile-first`
  - *Why mobile-first?* By starting with the smallest screen size that we plan to support, we know we’re giving attention to the most vital aspects of our site or app first. It's also most difficult to decide and strip down __what__ elements on the page to show are most necessary!
  - `mobile-first` doesn't mean mobile is the most important, it just means we should focus on smaller first
  - also, with mobile-first loading time is faster on smaller screens
  - desktop- size, max- size
  - tablet, iPad
  - phone

Example on how to do `media queries`:
```
  /* Small-ish screen dimensions */
/* ... Some styles for the smallest viewport ... */

@media screen and (min-width: $small-medium-ish) {
    /* ... New styles / overriding some old ones ... */
}
@media screen and (min-width: $medium-ish) {
    /* ... New styles / overriding some old ones ... */
}
@media screen and (min-width: $large-ish) {
    /* ... New styles / overriding some old ones ... */
}
@media screen and (min-width: $extra-large-ish) {
    /* ... New styles / overriding some old ones ... */
}
```
