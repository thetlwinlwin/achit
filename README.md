# achit

Flutter project for my love.

## Tips
 
- If one wants to the same width and height for textformfield, wrap the field with sizedbox and give width to it. then, add textstyle with fontsize.Then, add content padding vertical in input decoration. width must be equal to top padding + fontsize + btm padding.

- If one wants just error border without text, return empty string in both validator and helper text in input decorcation.
- Use [this link](https://fluttershapemaker.com/) for clip path.
- To add photo to custom clippath, use image.asset and give height and width in it.
- To get the datetime difference, go countdown/count.dart.
- I also create simple text typer in utils/text_typer.dart.
- Added favicon. Change description in web/manifest.json and web/index.html
- Added flutter web loading. Html with image in body tag, style tag inside header tag. set timer to remove that image after web is loaded in script tag.
- Flutter web can be hosted locally.In case you need to debug (I tried my flutter web in iphone), build the web and cd build/web and run python http server with this cmd "python -m http.server 8000". 
- In my case, custom clippath doesn't render properly with html renderer. So, canvaskit renderer is used.
- **If you build the web with canvaskit there is a strong chance that flutter js not found error when running with python http server locally. To fix this, remove  the following in index.html.**
  
        <base href='$FLUTTER_BASE_HREF'>        

- Then clean the project with "flutter clean" and rebuild again.
- Loading indicator with implicit animation is also added.
