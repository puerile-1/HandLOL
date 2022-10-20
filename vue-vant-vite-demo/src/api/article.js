import request from "../utils/request"

export const getArticle = (data) => {
    console.log(data)
    return request({
        method: "GET",
        url: "/api/article",
        data,
    })
}