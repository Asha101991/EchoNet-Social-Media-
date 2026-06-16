function addPost() {
  const textarea = document.getElementById('postText');
  const postText = textarea.value.trim();

  if (!postText) {
    return;
  }

  const postContainer = document.getElementById('posts');
  const newPost = document.createElement('article');

  newPost.classList.add('post');
  newPost.innerHTML = `
    <h3>@you</h3>
    <p>${escapeHTML(postText)}</p>
  `;

  postContainer.prepend(newPost);
  textarea.value = '';
}

function escapeHTML(text) {
  const div = document.createElement('div');
  div.textContent = text;
  return div.innerHTML;
}
