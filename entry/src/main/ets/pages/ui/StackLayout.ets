import router from '@ohos.router';
/**
 * 层叠布局
 */
@Entry
@Component
struct StackLayout {
  @State params: object = router.getParams()
  private arr: string[] = ['APP1', 'APP2', 'APP3', 'APP4', 'APP5', 'APP6', 'APP7', 'APP8'];

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
      Scroll() {
        Row() {


          // Column() {
          //   Stack({}) {
          //     Column() {
          //     }.width('90%').height('100%').backgroundColor('#ff58b87c')
          //
          //     Text('text').width('60%').height('60%').backgroundColor('#ffc3f6aa')
          //     Button('button').width('30%').height('30%').backgroundColor('#ff8ff3eb').fontColor('#000')
          //   }.width('100%').height(150).margin({ top: 50 })
          // }

          // Stack({ alignContent: Alignment.BottomStart }) {
          //   Column() {
          //     Text('Stack子元素1').textAlign(TextAlign.End).fontSize(20)
          //   }.width(100).height(100).backgroundColor(0xffd306)
          //
          //   Column() {
          //     Text('Stack子元素2').fontSize(20)
          //   }.width(150).height(150).backgroundColor(Color.Pink)
          //
          //   Column() {
          //     Text('Stack子元素3').fontSize(20)
          //   }.width(200).height(200).backgroundColor(Color.Grey)
          // }.margin({ top: 100 }).width(350).height(350).backgroundColor(0xe0e0e0)

          // Stack({ alignContent: Alignment.BottomStart }) {
          //   Column() {
          //     Text('Stack子元素1').fontSize(20)
          //   }.width(100).height(100).backgroundColor(0xffd306).zIndex(2)
          //
          //   Column() {
          //     Text('Stack子元素2').fontSize(20)
          //   }.width(150).height(150).backgroundColor(Color.Pink).zIndex(1)
          //
          //   Column() {
          //     Text('Stack子元素3').fontSize(20)
          //   }.width(200).height(200).backgroundColor(Color.Grey)
          // }.margin({ top: 100 }).width(350).height(350).backgroundColor(0xe0e0e0)
          Stack({ alignContent: Alignment.Bottom }) {
            Flex({ wrap: FlexWrap.Wrap }) {
              ForEach(this.arr, (item) => {
                Text(item)
                  .width(100)
                  .height(100)
                  .fontSize(16)
                  .margin(10)
                  .textAlign(TextAlign.Center)
                  .borderRadius(10)
                  .backgroundColor(0xFFFFFF)
              }, item => item)
            }.width('100%').height('100%')

            Flex({ justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
              Text('联系人').fontSize(16)
              Text('设置').fontSize(16)
              Text('短信').fontSize(16)
            }
            .width('50%')
            .height(50)
            .backgroundColor('#16302e2e')
            .margin({ bottom: 15 })
            .borderRadius(15)
          }.width('100%').height(500).backgroundColor('#CFD0CF').margin({
            top: 20
          })
        }.width('100%')
      }
      .scrollable(ScrollDirection.Vertical)
    }

  }
}