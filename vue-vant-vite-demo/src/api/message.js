import request from "../utils/request"

export const getMessage = (data) => {
    console.log(data)
    return request({
        method: "GET",
        url: "/api/message",
        data,
    })
}