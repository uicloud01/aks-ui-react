
export async function getAllUsers() {

    const response = await fetch('/api/users');
    const res= await getSamplePost();
    return await response.json();
}

export async function createUser(data) {
    const response = await fetch(`/api/user`, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({user: data})
      })
      
    return await response.json();
}

export const getSamplePost = async  params =>{
    let url ='https://jsonplaceholder.typicode.com/posts';
    const response = await fetch(url).then((response) => response.json()).then((json) => console.log(json));
    return response;
}