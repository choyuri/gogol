{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.PageSpeed
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lets you analyze the performance of a web page and get tailored
-- suggestions to make that page faster.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v2/getting-started PageSpeed Insights API Reference>
module Network.Google.PageSpeed
    (
    -- * API
      PageSpeedAPI
    , pageSpeedAPI
    , pageSpeedURL

    -- * Service Methods

    -- * REST Resources

    -- ** PagespeedonlinePagespeedapiRunpagespeed
    , module Network.Google.Resource.Pagespeedonline.Pagespeedapi.Runpagespeed

    -- * Types

    -- ** PagespeedAPIImageV2
    , PagespeedAPIImageV2
    , pagespeedAPIImageV2
    , paivHeight
    , paivData
    , paivMimeType
    , paivWidth
    , paivPageRect
    , paivKey

    -- ** ResultVersion
    , ResultVersion
    , resultVersion
    , rvMinor
    , rvMajor

    -- ** ResultPageStats
    , ResultPageStats
    , resultPageStats
    , rpsHTMLResponseBytes
    , rpsTotalRequestBytes
    , rpsNumberResources
    , rpsNumberStaticResources
    , rpsNumberHosts
    , rpsNumberJsResources
    , rpsNumberCssResources
    , rpsTextResponseBytes
    , rpsFlashResponseBytes
    , rpsImageResponseBytes
    , rpsOtherResponseBytes
    , rpsJavascriptResponseBytes
    , rpsCssResponseBytes

    -- ** PagespeedAPIImageV2Page_rect
    , PagespeedAPIImageV2Page_rect
    , pagespeedAPIImageV2Page_rect
    , paivpHeight
    , paivpLeft
    , paivpWidth
    , paivpTop

    -- ** PagespeedonlinePagespeedapiRunpagespeedStrategy
    , PagespeedonlinePagespeedapiRunpagespeedStrategy (..)

    -- ** PagespeedAPIFormatStringV2Args
    , PagespeedAPIFormatStringV2Args
    , pagespeedAPIFormatStringV2Args
    , pafsvaValue
    , pafsvaRects
    , pafsvaKey
    , pafsvaType
    , pafsvaSecondaryRects

    -- ** Result
    , Result
    , result
    , rScreenshot
    , rKind
    , rResponseCode
    , rInvalidRules
    , rFormattedResults
    , rVersion
    , rRuleGroups
    , rPageStats
    , rId
    , rTitle

    -- ** PagespeedAPIFormatStringV2ArgsSecondary_rects
    , PagespeedAPIFormatStringV2ArgsSecondary_rects
    , pagespeedAPIFormatStringV2ArgsSecondary_rects
    , pafsvasHeight
    , pafsvasLeft
    , pafsvasWidth
    , pafsvasTop

    -- ** PagespeedAPIFormatStringV2ArgsRects
    , PagespeedAPIFormatStringV2ArgsRects
    , pagespeedAPIFormatStringV2ArgsRects
    , pafsvarHeight
    , pafsvarLeft
    , pafsvarWidth
    , pafsvarTop

    -- ** ResultFormattedResults
    , ResultFormattedResults
    , resultFormattedResults
    , rfrLocale
    , rfrRuleResults

    -- ** ResultRuleGroups
    , ResultRuleGroups
    , resultRuleGroups

    -- ** PagespeedAPIFormatStringV2
    , PagespeedAPIFormatStringV2
    , pagespeedAPIFormatStringV2
    , pafsvArgs
    , pafsvFormat

    -- ** ResultFormattedResultsRuleResults
    , ResultFormattedResultsRuleResults
    , resultFormattedResultsRuleResults
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Pagespeedonline.Pagespeedapi.Runpagespeed

{- $resources
TODO
-}

type PageSpeedAPI = PagespeedapiRunpagespeedResource

pageSpeedAPI :: Proxy PageSpeedAPI
pageSpeedAPI = Proxy