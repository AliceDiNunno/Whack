//
//  ImageData.swift
//  Whack
//
//  Created by Alice Di Nunno on 28/09/2023.
//

import Foundation

struct Book: Hashable, Identifiable {
    let id: Int
    let name: String
}


final class ImageData: ObservableObject {
    @Published var photos = [Book]()
    
    init() {
        photos.append(Book(id: 0, name: "https://2.bp.blogspot.com/iw0C5QDrCkNRGQRNTrs6EUzcOvsTfI3Y_HyqAvCL64aT2fxXBgLZAvPHh390dkjmCdijuZ8_xiMb-1B1VOshTtJMyghsr2MLskj1OS5aZQ2yVI2kdHztmLNw5TctcNN3kpFLfBsleA=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
        photos.append(Book(id: 1, name: "https://2.bp.blogspot.com/Rs3ozgSeLuXg_cK_RKyXmuYe1zu8SZYR_oDArz75AqzIDV-LB_aJwuC-YaOa97BWYgzHiXKDFGORsoaiDXhEnNM1vzYBJjADfhSwDPSpLes4lrasa6Pbid16WjXD9MgJCHGIEt7tBA=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
        photos.append(Book(id: 2, name: "https://2.bp.blogspot.com/iaWhh2ZIBBn6nX8ah9zJFVNi_U6029IZutWRYSiqut4lMN_GGGgvNC5cOkR58bveJ2VYtehQzfIE_-G6D7zrQzkTIvWH3P3kvvaUKIHFA7djbltKX64OHMQP4Gr0J1nx8Dh9LTvi4g=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
        photos.append(Book(id: 3, name: "https://2.bp.blogspot.com/CVVkRyRKOC9XOAFNw2Y3s5MzSzBXOlFzgAkZhslYPfDzLWXDBn9yRHNT5s1wtLV8o7UPup0bvTsc9e6N7dWDRkKEB2nMyf0KS9KmElI3H3biMzYrosttvf1Qf4ohYhHb_RIDJoZxLQ=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
        photos.append(Book(id: 4, name: "https://2.bp.blogspot.com/fBLbMn7BM5Kj2-CvmxH5RP8UycYacQoKSQCU6PA9ynhne7qn6Jm-QO2JdoCgl3ehPPpaMoziuovRqFNb9C0DJb2Q8KXgVkMmmN8CaeLnZmV4jfW1j9WKNcNTo_XZ9xymFHVfF1VuLA=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
        photos.append(Book(id: 5, name: "https://2.bp.blogspot.com/sF3xICzhMRAeci6rKKvJewKX6NVygnbobcJ0XMVu6I1U28FJdJzAHQuOwmsM5hMdYNH_fxDNatP3pknmNBF8qOA9_P2TjgjGPCFcDvSrWjVTcDIgklV9ngc85aFVpl1ISCcrZnsrqg=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
        photos.append(Book(id: 6, name: "https://2.bp.blogspot.com/IV0h998fsf__cc0iS33wV012q3zxlh3cSUyDxgcYyceI0TVeZARbYaIDoDoaDoAG_dBjhEeAO7UXTiIl9c4vkQDaJ_dSEm_xd6RF8-N5sMNfvLzedyo9OHQhrvCaMyakjpArKgEFLg=s1600?rhlupa=MmEwMTplMGE6M2UwOjMxNjE6Ojk1&rnvuka=TW96aWxsYS81LjAgKE1hY2ludG9zaDsgSW50ZWwgTWFjIE9TIFggMTBfMTVfNykgQXBwbGVXZWJLaXQvNjA1LjEuMTUgKEtIVE1MLCBsaWtlIEdlY2tvKSBWZXJzaW9uLzE3LjAgU2FmYXJpLzYwNS4xLjE1"))
    }
}
