import router from '@ohos.router';
/**
 * 线性布局
 */
@Entry
@Component
struct Detail {
  @State btnBack: string = "关闭"
  @State paramsFromIndex: object = router.getParams()

  build() {

    Column() {
      Row() {
        Text('返回')
          .fontColor(Color.White)
          .fontSize(20)
          .padding({
            left: 20,
            right:20
          })
          .height('100%')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Orange)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.back()
          })
        Text(this.paramsFromIndex?.['title'])
          .fontColor(Color.White)
          .fontSize(20)
          .height('100%')
          .width('100%')
          .padding({
            left: 90,
          })
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Grey)
      }.width('100%').height(50);


      Row() {
        Column() {
          Button(this.btnBack)
            .fontColor(Color.White)
            .fontSize(16)
            .width('90%')
            .align(Alignment.Center)
            .fontWeight(FontWeight.Bold)
            .onClick(() => {
              router.back()
            })
        }.width('100%').alignItems(HorizontalAlign.Center)
      }.width('100%').height(50).alignItems(VerticalAlign.Center);


    }.width('100%')
  }
}