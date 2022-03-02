import pytest

from learning_flashcards.app import create_app

@pytest.fixture(autouse=True)
def test_site(app):
    assert app.get(url_for('/')).status_code == 200