import router from '@ohos.router';
/**
 * 创建轮播
 */
@Entry
@Component
struct SwiperPage {
  @State params: object = router.getParams()
  private swiperController: SwiperController = new SwiperController()

  build() {
    Column() {
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
      Text('该控件相当于android中的ViewPager')
      Swiper(this.swiperController) {
        Text("0")
          .width('100%')
          .height('100%')
          .backgroundColor(Color.Gray)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("1")
          .width('100%')
          .height('100%')
          .backgroundColor(Color.Green)
          .textAlign(TextAlign.Center)
          .fontSize(30)

        Text("2")
          .width('100%')
          .height('100%')
          .backgroundColor(Color.Blue)
          .textAlign(TextAlign.Center)
          .fontSize(30)
      }
      .width('100%')
      .height('70%')
      .loop(true)
      .indicator(true)
      .vertical(false)
      .indicatorStyle({
        size: 30,
        left: 10,
        color: Color.Red
      })
      .displayCount(2)

      Row({ space: 12 }) {
        Button('上一页')
          .onClick(() => {
            this.swiperController.showPrevious(); // 通过controller切换到前一页
          })
        Button('下一页')
          .onClick(() => {
            this.swiperController.showNext(); // 通过controller切换到后一页
          })

      }.margin(5)
    }
  }
}