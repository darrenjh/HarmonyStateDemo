import router from '@ohos.router';

@Component
export struct TitleComponent {
  @State params: object = router.getParams()

  build() {
    Stack({ alignContent: Alignment.Start }) {
      Text(this.params?.['title'])
        .fontColor(Color.White)
        .fontSize(20)
        .height('100%')
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Bold)
        .backgroundColor(Color.Grey)
      Stack({ alignContent: Alignment.Center }) {
        Image($r("app.media.icon_back")).width(15).height(20)
      }.height('100%').width(50).onClick(() => {
        router.back()
      })

    }.width('100%').height(50);

  }
}