<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/">
   <SOAP-ENV:Header>
      <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" SOAP-ENV:mustUnderstand="1">
         <wsse:UsernameToken xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
            <wsse:Username>${user}</wsse:Username>
            <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordDigest">${digest}</wsse:Password>
            <wsse:Nonce EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary">${nonce}</wsse:Nonce>
            <wsu:Created>${date}</wsu:Created>
         </wsse:UsernameToken>
      </wsse:Security>
   </SOAP-ENV:Header>
   <SOAP-ENV:Body>
      <ent:getEntityRequest xmlns:ent="http://bernardomg.com/example/ws/entity">
         <ent:id>1</ent:id>
      </ent:getEntityRequest>
   </SOAP-ENV:Body>
</SOAP-ENV:Envelope>