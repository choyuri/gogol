{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerNegotiationRoundsInsert@.
module Network.Google.Resource.AdExchangeBuyer.NegotiationRounds.Insert
    (
    -- * REST Resource
      NegotiationRoundsInsertResource

    -- * Creating a Request
    , negotiationRoundsInsert'
    , NegotiationRoundsInsert'

    -- * Request Lenses
    , nriQuotaUser
    , nriPrettyPrint
    , nriUserIP
    , nriKey
    , nriOAuthToken
    , nriNegotiationId
    , nriNegotiationRoundDto
    , nriFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerNegotiationRoundsInsert@ which the
-- 'NegotiationRoundsInsert'' request conforms to.
type NegotiationRoundsInsertResource =
     "negotiations" :>
       Capture "negotiationId" Int64 :>
         "negotiationrounds" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NegotiationRoundDto :>
                           Post '[JSON] NegotiationRoundDto

-- | Adds the requested negotiationRound to the requested negotiation.
--
-- /See:/ 'negotiationRoundsInsert'' smart constructor.
data NegotiationRoundsInsert' = NegotiationRoundsInsert'
    { _nriQuotaUser           :: !(Maybe Text)
    , _nriPrettyPrint         :: !Bool
    , _nriUserIP              :: !(Maybe Text)
    , _nriKey                 :: !(Maybe Key)
    , _nriOAuthToken          :: !(Maybe OAuthToken)
    , _nriNegotiationId       :: !Int64
    , _nriNegotiationRoundDto :: !NegotiationRoundDto
    , _nriFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'NegotiationRoundsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nriQuotaUser'
--
-- * 'nriPrettyPrint'
--
-- * 'nriUserIP'
--
-- * 'nriKey'
--
-- * 'nriOAuthToken'
--
-- * 'nriNegotiationId'
--
-- * 'nriNegotiationRoundDto'
--
-- * 'nriFields'
negotiationRoundsInsert'
    :: Int64 -- ^ 'negotiationId'
    -> NegotiationRoundDto -- ^ 'NegotiationRoundDto'
    -> NegotiationRoundsInsert'
negotiationRoundsInsert' pNriNegotiationId_ pNriNegotiationRoundDto_ =
    NegotiationRoundsInsert'
    { _nriQuotaUser = Nothing
    , _nriPrettyPrint = True
    , _nriUserIP = Nothing
    , _nriKey = Nothing
    , _nriOAuthToken = Nothing
    , _nriNegotiationId = pNriNegotiationId_
    , _nriNegotiationRoundDto = pNriNegotiationRoundDto_
    , _nriFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
nriQuotaUser :: Lens' NegotiationRoundsInsert' (Maybe Text)
nriQuotaUser
  = lens _nriQuotaUser (\ s a -> s{_nriQuotaUser = a})

-- | Returns response with indentations and line breaks.
nriPrettyPrint :: Lens' NegotiationRoundsInsert' Bool
nriPrettyPrint
  = lens _nriPrettyPrint
      (\ s a -> s{_nriPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
nriUserIP :: Lens' NegotiationRoundsInsert' (Maybe Text)
nriUserIP
  = lens _nriUserIP (\ s a -> s{_nriUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nriKey :: Lens' NegotiationRoundsInsert' (Maybe Key)
nriKey = lens _nriKey (\ s a -> s{_nriKey = a})

-- | OAuth 2.0 token for the current user.
nriOAuthToken :: Lens' NegotiationRoundsInsert' (Maybe OAuthToken)
nriOAuthToken
  = lens _nriOAuthToken
      (\ s a -> s{_nriOAuthToken = a})

nriNegotiationId :: Lens' NegotiationRoundsInsert' Int64
nriNegotiationId
  = lens _nriNegotiationId
      (\ s a -> s{_nriNegotiationId = a})

-- | Multipart request metadata.
nriNegotiationRoundDto :: Lens' NegotiationRoundsInsert' NegotiationRoundDto
nriNegotiationRoundDto
  = lens _nriNegotiationRoundDto
      (\ s a -> s{_nriNegotiationRoundDto = a})

-- | Selector specifying which fields to include in a partial response.
nriFields :: Lens' NegotiationRoundsInsert' (Maybe Text)
nriFields
  = lens _nriFields (\ s a -> s{_nriFields = a})

instance GoogleAuth NegotiationRoundsInsert' where
        authKey = nriKey . _Just
        authToken = nriOAuthToken . _Just

instance GoogleRequest NegotiationRoundsInsert' where
        type Rs NegotiationRoundsInsert' =
             NegotiationRoundDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u NegotiationRoundsInsert'{..}
          = go _nriQuotaUser (Just _nriPrettyPrint) _nriUserIP
              _nriKey
              _nriOAuthToken
              _nriNegotiationId
              _nriFields
              (Just AltJSON)
              _nriNegotiationRoundDto
          where go
                  = clientWithRoute
                      (Proxy :: Proxy NegotiationRoundsInsertResource)
                      r
                      u