import router from '@ohos.router';
/**
 * 栅格布局
 */
@Entry
@Component
struct GridRowGridCol {
  @State params: object = router.getParams()
  @State bgColors: Color[] = [Color.Red, Color.Orange, Color.Yellow, Color.Green, Color.Pink, Color.Grey, Color.Blue, Color.Brown];

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

      GridRow({
        breakpoints: {
          value: ['200vp', '300vp', '400vp', '500vp', '600vp'],
          reference: BreakpointsReference.WindowSize
        }
      }){
        ForEach(this.bgColors, (color, index) => {
          GridCol({
            span: {
              xs: 2, // 在最小宽度类型设备上，栅格子组件占据的栅格容器2列。
              sm: 3, // 在小宽度类型设备上，栅格子组件占据的栅格容器3列。
              md: 4, // 在中等宽度类型设备上，栅格子组件占据的栅格容器4列。
              lg: 6, // 在大宽度类型设备上，栅格子组件占据的栅格容器6列。
              xl: 8, // 在特大宽度类型设备上，栅格子组件占据的栅格容器8列。
              xxl: 12 // 在超大宽度类型设备上，栅格子组件占据的栅格容器12列。
            }
          }) {
            Row() {
              Text(`${index}`)
            }.width("100%").height('50vp')
          }.backgroundColor(color)
        })
      }


    }.width('100%')
  }
}