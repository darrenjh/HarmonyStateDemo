import AbilityStage from '@ohos.app.ability.AbilityStage';
import hilog from '@ohos.hilog';
/*
 * AbilityStage
 * AbilityStage是一个Module级别的组件容器，应用的HAP在首次加载时会创建一个AbilityStage实例，可以对该Module进行初始化等操作。
 * AbilityStage与Module一一对应，即一个Module拥有一个AbilityStage。
 * 使用方式参考文档
 * https://developer.harmonyos.com/cn/docs/documentation/doc-guides-V3/abilitystage-0000001427584604-V3
 *
 * AbilityStage拥有onCreate()生命周期回调和onAcceptWant()、onConfigurationUpdated()、onMemoryLevel()事件回调。
 * 参考文档，
 * https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-app-ability-abilitystage-0000001493424312-V3#ZH-CN_TOPIC_0000001574088265__abilitystageonacceptwant
 *
 */
export default class EntryAbilityStage extends AbilityStage {
  // AbilityStage.context
  // context: AbilityStageContext;
  //
  // 指示AbilityStage的上下文。
  //
  // 系统能力：SystemCapability.Ability.AbilityRuntime.Core

  onCreate() {
    //当应用创建时调用。系统能力：SystemCapability.Ability.AbilityRuntime.Core
    hilog.info(0x0000, 'testTag', '%{public}s', 'EntryAbilityStage->--HAP加载入口处，entry模块，首次创建会走这里，AbilityStage  onCreate');
  }

  onAcceptWant(want) {
    //Want类型参数，传入需要启动的ability的信息，如Ability名称，Bundle名称等。
    // 启动一个specified ability时触发的事件。 SystemCapability.Ability.AbilityRuntime.Core 仅specified模式下触发
    //https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-app-ability-abilitystage-0000001493424312-V3#ZH-CN_TOPIC_0000001574088265__abilitystageonacceptwant
    hilog.info(0x0000, 'testTag', '%{public}s', 'EntryAbilityStage->--onAcceptWant--->仅specified模式下触发.启动一个specified ability时触发的事件。');
    return "EntryAbilityStage";
  }

  onConfigurationUpdated(newConfig: Configuration) {
    //	newConfig 发生全局配置变更时触发回调，当前全局配置包括系统语言、深浅色模式。
    //环境变化通知接口，发生全局配置变更时回调。
    //系统能力：SystemCapability.Ability.AbilityRuntime.Core
    hilog.info(0x0000, 'testTag', '%{public}s', 'EntryAbilityStage->--onConfigurationUpdated');
  }


  onMemoryLevel(level) {
    // 当系统已决定调整内存时调用。例如，当该功能在后台运行时，没有足够的内存来运行尽可能多的后台进程时可以使用。
    // 回调返回内存微调级别，显示当前内存使用状态。
    // 系统能力：SystemCapability.Ability.AbilityRuntime.Core
    hilog.info(0x0000, 'testTag', '%{public}s', 'EntryAbilityStage->--onMemoryLevel');
  }
}