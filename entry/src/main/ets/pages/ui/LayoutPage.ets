import router from '@ohos.router'
import hilog from '@ohos.hilog';
import { TitleComponent } from '../TitleComponent';

@Entry
@Component
  /**
   * @Entry表示该自定义组件为入口组件
  * @Component和@State都是装饰器
   * @Component表示自定义组件
  * @State表示组件中的状态变量，状态变量变化会触发UI刷新
   * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/arkts-basic-syntax-overview-0000001531611153-V3
   * @State允许修饰的类型：Object、class、string、number、boolean、enum类型
   */
struct LayoutPage {
  //按钮的宽度
  @State btnWidth: number = 320
  @State btnHeight: number = 50
  @State btnFontSize: number = 16
  @State params: object = router.getParams()
  private btnStrArray: String[] = ["线性布局(Row/Colum)", "层叠布局(Stack)",
    "弹性布局(Flex)", "相对布局(RelativeContainer)", "栅格布局(GridRow/GridCol)", "媒体查询(mediaqery)",
    "创建列表(List)", "创建网格(Grid/GridItem)", "创建轮播(Swiper)",]
  private scroller: Scroller = new Scroller();

  build() {
    Column() {
       TitleComponent()
      //滚动列表
      Scroll(this.scroller) {
        //Column容器中，space属性设置排列方向上子元素的间距
        Column({ space: 20 }) {
          ForEach(this.btnStrArray, (item: string, index: number) => {
            Button(item, { type: ButtonType.Normal })
              .borderRadius(15)
              .backgroundColor(Color.Gray)
              .fontColor(Color.White)
              .fontSize(this.btnFontSize)
              .width(this.btnWidth)
              .height(this.btnHeight)
              .fontWeight(FontWeight.Bold)
              .onClick(() => {
                doClick(item, index)
              })
          }, (item: string) => item)
        }
      }
      .width('100%')
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .scrollable(ScrollDirection.Vertical)
      .padding({ top: 20, bottom: 100 })

    }

  }
}


/**
 * 按钮的点击事件
 * @param btnStr 按钮文案
 * @param index 按钮下标
 */
function doClick(btnStr: String, index: number) {
  hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，点击跳转到' + btnStr + '界面,index:' + index);
  var url = 'pages/ui/LayoutPage'
  switch (index) {
    case 0: //线性布局(Row/Colum)
      url = 'pages/ui/RowColumn'
      break
    case 1: //层叠布局(Stack)
      url = 'pages/ui/StackLayout'
      break
    case 2: //弹性布局(Flex)
      url = 'pages/ui/FlexPage'
      break
    case 3: //相对布局(RelativeContainer)
      url = 'pages/ui/RelativeContainerPage'
      break
    case 4: //栅格布局(GridRow/GridCol)
      url = 'pages/ui/GridRowGridCol'
      break
    case 5: //媒体查询(mediaquery)
      url = 'pages/ui/MediaQueryPage'
      break
    case 6: //创建列表(List)
      url = 'pages/ui/ListPage'
      break
    case 7: //创建网格(Grid/GridItem)
      url = 'pages/ui/GridGridItemPage'
      break
    case 8: //创建轮播(Swiper)
      url = 'pages/ui/SwiperPage'
      break
    default:
      break
  }
  router.pushUrl({
    url: url,
    params: {
      title: btnStr
    }
  }).then(() => {
    hilog.info(0x0000, 'testTag', '%{public}s', '通过路由，成功跳转到' + btnStr + '界面');
  }).catch((err) => {
    hilog.info(0x0000, 'testTag', '%{public}s', '跳转失败code:' + err.code + ',message:' + err.message);
  })
}