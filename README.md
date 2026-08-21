# Lookup URLs with the National Library of Norway's Web Archive

This repository contains the necessary code to deploy a web-app that prototypes looking up multiple URLs in the National Library of Norway's Web Archive.

The prototype allow the user to:
- takes a list of URLs from the user as input,
- checks if URLs are present in National Library of Norway's Web Archive public index,
- returns a list with results, and link to replay for resources where `index=True`
- allow the user to download results as `.xlsx`

## Usage

### Online access
For a short period of time, the app will be hosted from [https://nettarkivet.beta.nb.no/oppslag/](https://nettarkivet.beta.nb.no/oppslag/).
It's prototype, demonstrating CDX index can be useful for lookups. Using streamlit to handle UI and interaction, the app can be a bit slow. Future iterations might look into a more high-performant solution.

#### Using the app
To enter URLs you want to look up in Nettarkivet, you can either:
a) upload a .txt file with one URL per line, or
b) paste URLs in the text input field.

Make sure that you only have one URL per line, and not to add any commas in the end of the URL.

When you are ready, press the button **"Slå opp URLer".**

### Local deployment
Local deployment requires Python 3.14 to be installed.

1. Download the latest [release version](https://www.github.com/nationallibraryofnorway/nettarkivet-cdx-oppslag-app/releases/new).
2. Unzip the downloaded file.
3. Open your terminal and navigate to the app's path

#### Start app
5. Install the required python packages. In your terminal, type:
```python3
pip install .
```

6. Then, run the app by typing:
```python3
streamlit run app.py
```

A new window should open in your browser.

#### Using the app
To enter URLs you want to look up in Nettarkivet, you can either:
a) upload a .txt file with one URL per line, or
b) paste URLs in the text input field.

Make sure that you only have one URL per line, and not to add any commas in the end of the URL.

When you are ready, press the button **"Slå opp URLer".**
