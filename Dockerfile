# Use AWS Lambda's Python 3.9 base image
FROM public.ecr.aws/lambda/python:3.9

# Copy application code
COPY app/ /var/task/

# Install dependencies
RUN pip install --no-cache-dir requests

# Command for AWS Lambda to execute the handler
CMD ["lambda_function.lambda_handler"]

