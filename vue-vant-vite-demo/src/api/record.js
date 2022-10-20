import request from "../utils/request"

export const getRecords = (data) => {
    console.log(data)
    return request({
        method: "GET",
        url: "/api/records",
        data,
    })
}