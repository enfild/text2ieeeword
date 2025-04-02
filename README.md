# IEEE Paper Formatter Docker Environment

This Docker image sets up a working environment for formatting academic papers according to IEEE standards using Python and the `python-docx` library.

## How to Build the Docker Image

```
docker build -t ieee_formatter .
```

## How to Run the Docker Container

Run the container with your current directory mounted to `/app`, allowing you to conveniently save the output file:

```
docker run -it --rm -v $(pwd):/app ieee_formatter
python3 ./text2ieee.py
```

Activate an API plan at [OpenAI API platform](https://platform.openai.com/).

### Creating an OpenAI API Key:

1. Go to [OpenAI's platform](https://platform.openai.com/api-keys).
2. Log in with your OpenAI credentials (same as your ChatGPT account).
3. On the **API keys** page, click:

```
+ Create new secret key
```

### Common Issue:

If you encounter the error:

```
no relationship of type 'http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument' in collection
```

Resolve this by reopening the file in Microsoft Word and saving it again explicitly as a `.docx` file.
