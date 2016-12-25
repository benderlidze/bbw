---
layout: wallet
lang: en
author: jordantuwiner
permalink: "/wallets/trezor/"
seotitle: "Trezor Review: Is It Worth Buying?"
title: "Trezor"
desc: TREZOR launched in August 2014 as the first Bitcoin hardware wallet, offering simple and secure cold storage and offline transaction signing. 
wallet: trezor
cat: hardware
thumb: trezor.png
tags: [bip39, bip44, hdwallet, multiaccounts, pincode, offlinesigning, coldstorage, hardware]
website: bitcointrezor.com
website_url: http://bitcointrezor.com/
hardware_wallet: yes
open_source: yes
open_source_url: https://github.com/trezor/
control_priv_keys: yes
buy: yes
buy_url: http://buybitcoinww.co/TREZOR_Wallet
contribute: trezor
summary: TREZOR launched in August 2014 as the first Bitcoin hardware wallet, offering secure cold storage plus the ability to spend with the convenience of a hot wallet. TREZOR is a small, key-sized device which connects to your computer with a USB cable. It stores your Bitcoin private keys offline and signs transactions. It can be safely used on a malware infected computer. TREZOR is compatible with a number of software wallets, including Mycelium, Electrum, and Multibit HD. 
weight: 9.1
released: Oct 2013
price: $99
pro1: Screen offers extra protection and verification
pro2: Affordable hardware wallet with screen
con1: $99 price tag may be out of reach for those on a budget
con2: Requires USB cable to use 
screen: yes
sidebardesc: TREZOR was released in October 2013 and was the first Bitcoin hardware wallet with a screen. TREZOR is a small, USB sized device that is actually a small computer.
pic: trezor.png
---
[TREZOR](http://buybitcoinww.co/TREZOR_Wallet){:rel="nofollow"} launched in [August 2014](http://satoshilabs.com/news/2014-08-07-trezor-sales-launched-buytrezor-com/) as the first Bitcoin hardware wallet, offering secure cold storage plus the ability to spend with the convenience of a hot wallet. TREZOR is a small, key-sized device which connects to your computer with a USB cable. It stores your Bitcoin private keys offline and signs transactions. It can be safely used on a malware infected computer. 

* Table of Contents
{:toc}

## Price
Costs $99 for one, or $276 for three. You can buy with bitcoin from [TREZOR's website](http://buybitcoinww.co/TREZOR_hwallet){:rel="nofollow"} with credit card or bank account from [Amazon](http://buybitcoinww.co/TREZOR_Wallet){:rel="nofollow"}. 

## Security

TREZOR provides top-notch security for bitcoin, protecting against both physical and virtual theft. 

TREZOR is an HD wallet where you control the private keys, so an entire wallet can be backed up with the 24 words generated on setup. The original 24-word seed is generated using RNG from the device and the computer. The seed is generated offline and displayed on the TREZOR's screen, which ensures that the seed is never on an internet-connected device. 

A PIN code is required on setup, and required for spending. After each incorrect guess the wait between guesses is raised by a power of two. Making 30 guesses would take 17 years. 

You can add a passphrase to the 24-word seed for extra security, which acts as a 25th word. You must remember the passphrase because the seed without the passphrase is not enough to recover the wallet. A passphrase offers more security, but if forgotten the wallet cannot be recovered. 

You can recover the entire wallet with the 24-word seed and passphrase if used, in the event that your TREZOR is lost or damaged. Recovery can be done with another TREZOR or with other wallets, like [Electrum](/kb/restore-trezor-seed-electrum/) or [Mycelium](/kb/restore-trezor-seed-mycelium-android/). 

TREZOR's screen allows you to confirm that you're sending to the intended recipient, but this does not prevent against phishing attacks. 

A full overview of how TREZOR handles security threats can [be found on the Satoshi Labs website](http://doc.satoshilabs.com/trezor-faq/threats.html).

![trezor example][tco]{: .img-responsive .kb-helper}

<div class="caption-kb">TREZOR makes you confirm each transaction on the device's screen.</div>

TREZOR's buttons (as shown above) also make sure that a hacker couldn't automatically send a transaction from your device. The button must be physically pressed in order to confirm each outgoing transaction.

## Setup and Initialization

There are three ways to setup your TREZOR: via [myTREZOR.com](https://mytrezor.com/), the [Chrome extension](https://chrome.google.com/webstore/detail/trezor-chrome-extension/jcjjhjgimijdkoamemaghajlhegmoclj?hl=en), and [via the command line](/setup-trezor-python-tools-command-line/). Setup involves setting the PIN code, device name and password.

![trezor chrome extension][tc]{: .img-responsive .kb-helper}

myTREZOR.com is TREZOR's web wallet, while the Chrome extension is an app installed to your browser. The setup process on both is the same. The one difference is that setup in myTREZOR.com is online, while the Chrome extension can be used offline. If you care about your privacy, use the Chrome extension and setup offline.  

## Privacy

TREZOR itself offers very good privacy. Satoshi Labs has no way of tracking your actions after you receive the device because it has no serial number. All of the software is open source. No usernames or passwords are needed when using [TREZOR](http://buybitcoinww.co/TREZOR_Wallet){:rel="nofollow"}.

Privacy is determined by the wallet used with TREZOR: Electrum, MultiBit HD, and GreenAddress on desktop, GreenBits and Mycelium on Android, and myTREZOR.com on the web.

Data can be leaked upon setup if using TREZOR's myWallet. For a more private initialization, use the Chrome extension or the python tools to setup your device on an offline computer. 

## Software Wallets

Trezor is compatible with a number of wallets, including Electrum, MultiBit HD, and GreenAddress on desktop, GreenBits and Mycelium on Android, and myTREZOR.com on the web. Use the TREZOR Chrome extension to manage your device. 

## TREZOR vs. Ledger Wallet Nano

TREZOR and the [Ledger Nano](/wallets/ledger-nano/) are often compared. The main difference is TREZOR offers a screen, the ability to add a passphrase to the HD seed, and the ability to setup offline. The Ledger Nano wins in terms of price. 

## TREZOR vs. KeepKey

KeepKey is actually a port of the TREZOR's code and firmware. The main difference is that KeepKey offers a digital screen and the ability to recover the seed without worrying about keyloggers. 

## TREZOR vs. Paper Wallet

TREZOR may be better than a paper wallet for less technical users. Paper wallets can be hard to setup and it's easy to make mistakes. TREZOR makes creating secure offline storage easy. Although paper wallets are just as secure if created correctly. 

## Promo Code

There are currently no TREZOR promo codes available. If a coupon or discount code becomes available, we'll update this post. 

## Does TREZOR Work with Litecoin?

TREZOR can be used to store Litecoin, DASH, and other altcoins. It's up to software wallet developers to integrate support--the device itself is compatible with any altcoin.

[tc]: /img/wallets/trezorchrome.png
[tco]: /img/wallets/trezorconfirm.jpg