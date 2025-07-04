`UILabel`의 `layer.cornerRadius`만 했을 때 곡률반경이 적용되지 않는 문제가 있음.
`clipsToBounds = true`를 적으면 되긴 하나, 다른 `view`, `button` 등은 다른 subView 등이 없다면 굳이 `clipsToBounds` 설정이 없어도 곡률반경이 적용이 되긴 함.

다음 블로그 글 참고
[🔗 velog 글](https://velog.io/@mskim98/UIKit-UILabel%EC%9D%98-backgroundColor%EB%8A%94-%EC%95%BD%EA%B0%84-%EB%8B%A4%EB%A5%B4%EB%8B%A4)
