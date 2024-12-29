import pytest
from main import app  

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_home_route(client):
    """Test the home route."""
    response = client.get('/')  # Adjust route as per your app
    assert response.status_code == 200
