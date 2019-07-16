using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Engine.Details.RNEngineDetails
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNEngineDetailsModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNEngineDetailsModule"/>.
        /// </summary>
        internal RNEngineDetailsModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNEngineDetails";
            }
        }
    }
}
