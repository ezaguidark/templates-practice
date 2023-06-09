FROM python:3.10.5

EXPOSE 8080

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /code

# Install dependencies
RUN pip install --upgrade pip

COPY requirements.txt /code/

RUN pip install -r requirements.txt

# Copy the Django project
COPY . /code/

CMD [ "python", "manage.py", "runserver" ]