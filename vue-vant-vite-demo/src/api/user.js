import request from "../utils/request"

export const login = (data) => {
    console.log(data)
    return request({
        method: "POST",
        url: "/api/user",
        data,
    })
}
export const getBody = (data) => {
    console.log(data)
    return request({
        method: "Get",
        url: "/api/news",
        data,
    })
}