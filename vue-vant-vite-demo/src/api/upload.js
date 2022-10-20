import request from "../utils/request"

export const getUploads = (data) => {
    console.log(data)
    return request({
        method: "GET",
        url: "/api/message",
        data,
    })
}