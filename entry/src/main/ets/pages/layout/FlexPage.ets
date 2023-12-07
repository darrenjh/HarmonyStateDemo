import router from '@ohos.router';
/**
 * 弹性布局
 */
@Entry
@Component
struct FlexPage {
  @State btnBack: string = "关闭"
  @State params: object = router.getParams()

  build() {
    Column(){
      //标题栏
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
        Column() {

          Text('布局换行 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Text('FlexDirection.Row ').margin({ top: 10 })
          Flex({ direction: FlexDirection.Row }) {
            Text('1').width('33%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .height(70)
          .width('80%')
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('FlexDirection.RowReverse ').margin({ top: 30 })
          Flex({ direction: FlexDirection.RowReverse }) {
            Text('1').width('33%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .height(70)
          .width('80%')
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('FlexDirection.Column ').margin({ top: 30 })
          Flex({ direction: FlexDirection.Column }) {
            Text('1').width('100%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('100%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('100%').height(50).backgroundColor(0xF5DEB3)
          }
          .height(70)
          .width('80%')
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('FlexDirection.ColumnReverse ').margin({ top: 30 })
          Flex({ direction: FlexDirection.ColumnReverse }) {
            Text('1').width('100%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('100%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('100%').height(50).backgroundColor(0xF5DEB3)
          }
          .height(70)
          .width('80%')
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('布局换行 ').fontWeight(FontWeight.Bold).margin({ top: 30 })

          Text('FlexWrap. NoWrap ').margin({ top: 10 })
          Flex({ wrap: FlexWrap.NoWrap }) {
            Text('1').width('50%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('50%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('50%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('FlexWrap. Wrap ').margin({ top: 30 })
          Flex({ wrap: FlexWrap.Wrap }) {
            Text('1').width('50%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('50%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('50%').height(50).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(Color.Gray)


          Text('FlexWrap. WrapReverse ').margin({ top: 30 })
          Flex({ wrap: FlexWrap.WrapReverse }) {
            Text('1').width('50%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('50%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('50%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('主轴对齐方式 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Text('FlexAlign.Start ').margin({ top: 10 })
          Flex({ justifyContent: FlexAlign.Start }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding({ top: 10, bottom: 10 })
          .backgroundColor(Color.Gray)

          Text('FlexAlign.Center ').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.Center }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding({ top: 10, bottom: 10 })
          .backgroundColor(Color.Gray)


          Text('FlexAlign.End ').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.End }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding({ top: 10, bottom: 10 })
          .backgroundColor(Color.Gray)

          Text('FlexAlign.SpaceBetween ').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.SpaceBetween }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding({ top: 10, bottom: 10 })
          .backgroundColor(Color.Gray)

          Text('FlexAlign.SpaceAround ').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.SpaceAround }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding({ top: 10, bottom: 10 })
          .backgroundColor(Color.Gray)


          Text('FlexAlign.SpaceEvenly ').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.SpaceEvenly }) {
            Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
            Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
            Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
          }
          .width('90%')
          .padding({ top: 10, bottom: 10 })
          .backgroundColor(Color.Gray)

          Text('主轴对齐方式 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Text('ItemAlign.Auto ').margin({ top: 10 })
          Flex({ alignItems: ItemAlign.Auto }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('ItemAlign.Start ').margin({ top: 30 })
          Flex({ alignItems: ItemAlign.Start }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(Color.Gray)


          Text('ItemAlign.Center ').margin({ top: 30 })
          Flex({ alignItems: ItemAlign.Center }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('ItemAlign.End ').margin({ top: 30 })
          Flex({ alignItems: ItemAlign.End }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('ItemAlign.Stretch ').margin({ top: 30 })
          Flex({ alignItems: ItemAlign.Stretch }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(Color.Gray)


          Text('ItemAlign.Baseline ').margin({ top: 30 })
          Flex({ alignItems: ItemAlign.Baseline }) {
            Text('1').width('33%').height(30).backgroundColor(0xF5DEB3)
            Text('2').width('33%').height(40).backgroundColor(0xD2B48C)
            Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
          }
          .size({ width: '90%', height: 80 })
          .padding(10)
          .backgroundColor(Color.Gray)

          Text('子组件设置交叉轴对齐 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Text('子组件的alignSelf属性也可以设置子组件在父容器交叉轴的对齐格式，且会覆盖Flex布局容器中alignItems配置').margin({ top: 10 })
          Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) { // 容器组件设置子组件居中
            Text('alignSelf Start').width('25%').height(80)
              .alignSelf(ItemAlign.Start)
              .backgroundColor(0xF5DEB3)
            Text('alignSelf Baseline')
              .alignSelf(ItemAlign.Baseline)
              .width('25%')
              .height(80)
              .backgroundColor(0xD2B48C)
            Text('alignSelf Baseline').width('25%').height(100)
              .backgroundColor(0xF5DEB3)
              .alignSelf(ItemAlign.Baseline)
            Text('no alignSelf').width('25%').height(100)
              .backgroundColor(0xD2B48C)
            Text('no alignSelf').width('25%').height(100)
              .backgroundColor(0xF5DEB3)

          }.width('90%').height(220).backgroundColor(Color.Gray)


          Text('内容对齐 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Text('FlexAlign.Start').margin({ top: 10 })
          Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent: FlexAlign.Start }) {
            Text('1').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('2').width('60%').height(20).backgroundColor(0xD2B48C)
            Text('3').width('40%').height(20).backgroundColor(0xD2B48C)
            Text('4').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('5').width('20%').height(20).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .height(100)
          .backgroundColor(Color.Gray)

          Text('FlexAlign.Center').margin({ top: 10 })
          Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent: FlexAlign.Center }) {
            Text('1').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('2').width('60%').height(20).backgroundColor(0xD2B48C)
            Text('3').width('40%').height(20).backgroundColor(0xD2B48C)
            Text('4').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('5').width('20%').height(20).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .height(100)
          .backgroundColor(Color.Gray)

          Text('FlexAlign.End').margin({ top: 10 })
          Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent: FlexAlign.End }) {
            Text('1').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('2').width('60%').height(20).backgroundColor(0xD2B48C)
            Text('3').width('40%').height(20).backgroundColor(0xD2B48C)
            Text('4').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('5').width('20%').height(20).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .height(100)
          .backgroundColor(Color.Gray)

          Text('FlexAlign.SpaceBetween').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent: FlexAlign.SpaceBetween }) {
            Text('1').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('2').width('60%').height(20).backgroundColor(0xD2B48C)
            Text('3').width('40%').height(20).backgroundColor(0xD2B48C)
            Text('4').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('5').width('20%').height(20).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .height(100)
          .backgroundColor(Color.Gray)

          Text('FlexAlign.SpaceAround').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent: FlexAlign.SpaceAround }) {
            Text('1').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('2').width('60%').height(20).backgroundColor(0xD2B48C)
            Text('3').width('40%').height(20).backgroundColor(0xD2B48C)
            Text('4').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('5').width('20%').height(20).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .height(100)
          .backgroundColor(Color.Gray)

          Text('FlexAlign.SpaceEvenly').margin({ top: 30 })
          Flex({ justifyContent: FlexAlign.SpaceBetween, wrap: FlexWrap.Wrap, alignContent: FlexAlign.SpaceEvenly }) {
            Text('1').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('2').width('60%').height(20).backgroundColor(0xD2B48C)
            Text('3').width('40%').height(20).backgroundColor(0xD2B48C)
            Text('4').width('30%').height(20).backgroundColor(0xF5DEB3)
            Text('5').width('20%').height(20).backgroundColor(0xD2B48C)
          }
          .width('90%')
          .height(100)
          .backgroundColor(Color.Gray)

          Text('自适应拉伸 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Text('flexBasis ').margin({ top: 10 })
          Flex() {
            Text('flexBasis("auto")')
              .flexBasis('auto') // 未设置width以及flexBasis值为auto，内容自身宽松
              .height(100)
              .backgroundColor(0xF5DEB3)
            Text('flexBasis("auto")' + ' width("40%")')
              .width('40%')
              .flexBasis('auto') //设置width以及flexBasis值auto，使用width的值
              .height(100)
              .backgroundColor(0xD2B48C)

            Text('flexBasis(100)') // 未设置width以及flexBasis值为100，宽度为100vp
              .fontSize(15)
              .flexBasis(100)
              .height(100)
              .backgroundColor(0xF5DEB3)

            Text('flexBasis(100)')
              .fontSize(15)
              .flexBasis(100)
              .width(200) // flexBasis值为100，覆盖width的设置值，宽度为100vp
              .height(100)
              .backgroundColor(0xD2B48C)
          }.width('90%').height(120).padding(10).backgroundColor(Color.Gray)

          Text('flexGrow ').margin({ top: 30 })
          Flex() {
            Text('flexGrow(2)')
              .flexGrow(2)
              .width(100)
              .height(100)
              .backgroundColor(0xF5DEB3)

            Text('flexGrow(3)')
              .flexGrow(3)
              .width(100)
              .height(100)
              .backgroundColor(0xD2B48C)

            Text('no flexGrow')
              .width(100)
              .height(100)
              .backgroundColor(0xF5DEB3)
          }.width('90%').height(120).padding(10).backgroundColor(Color.Gray)


          Text('flexShrink ').margin({ top: 30 })
          Flex({ direction: FlexDirection.Row }) {
            Text('flexShrink(3)')
              .fontSize(15)
              .flexShrink(3)
              .width(200)
              .height(100)
              .backgroundColor(0xF5DEB3)

            Text('no flexShrink')
              .width(200)
              .height(100)
              .backgroundColor(0xD2B48C)

            Text('flexShrink(2)')
              .flexShrink(2)
              .width(200)
              .height(100)
              .backgroundColor(0xF5DEB3)
          }.width('90%').height(120).padding(10).backgroundColor(Color.Gray)

          Text('相关实例 ').fontWeight(FontWeight.Bold).margin({ top: 30 })
          Column() {
            Column({ space: 5 }) {
              Flex({ direction: FlexDirection.Row, wrap: FlexWrap.NoWrap, justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
                Text('1').width('30%').height(50).backgroundColor(0xF5DEB3)
                Text('2').width('30%').height(50).backgroundColor(0xD2B48C)
                Text('3').width('30%').height(50).backgroundColor(0xF5DEB3)
              }
              .height(70)
              .width('90%')
              .backgroundColor(Color.Gray)
            }.width('100%').margin({ top: 5 })
          }.width('100%')

        }.width('100%')
      }.padding({
        bottom: 100
      })
    }

  }
}