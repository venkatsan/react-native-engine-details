using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Version.RNVersion
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNVersionModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNVersionModule"/>.
        /// </summary>
        internal RNVersionModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNVersion";
            }
        }
    }
}
