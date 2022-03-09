import React, { useEffect, useState } from 'react'
import QRCode from 'qrcode'

export default function Qr() {
  var [src, setSrc] = useState("")
  useEffect(() => {
    QRCode.toDataURL('session_id: 0x56FF05, url: http://13.232.59.144/qr/callback')
    .then(data=> {
        setSrc(data)
    })
  }, [])
  return (
    <div>
        <img src={src} />
    </div>
  )
}
