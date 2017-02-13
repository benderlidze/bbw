---
layout: wallet
lang: en
author: jordantuwiner
permalink: "/wallets/ledger-hw1/"
seotitle: "Ledger HW.1 Review: Should You Get One? (2017)"
title: "Ledger HW.1"
desc: The Ledger HW.1 is a less fancy version of the Nano. It securely stores Bitcoin private keys offline and signs transactions in its secure environment. 
wallet: ledger_hw1
thumb: ledger.png
tags: [bip39, bip44, hdwallet, multiaccounts, pincode, offlinesigning, coldstorage, hardware]
website: ledgerwallet.com
website_url: https://www.ledgerwallet.com/
hardware_wallet: yes
open_source: yes
open_source_url: https://github.com/ledgerHQ/
control_priv_keys: yes
buy: yes
buy_url: http://buybitcoinww.co/Ledger_HW1
contribute: ledger-hw1
summary: The Ledger HW.1 can be considered a budget hardware wallet. It doesn't have a screen, so it isn't quite as secure as the three options mentioned above. It will, however, give you more security than a hot wallet. 
weight: 2
screen: no
released: Jan 2013
price: $17
pro1: At 15€ (~$17), the Ledger HW.1 is a good option for users on a budger
pro2: 
con1: No screen means the HW.1 must be setup on bootable USB or offline computer in order to setup securely
con2:  
sidebardesc: The Ledger HW.1 is a less fancy version of the Nano. It securely stores Bitcoin private keys offline and signs transactions in its secure environment.
pic: ledgerhw1.png
---
## Price
The <a rel="nofollow" href="http://buybitcoinww.co/Ledger_HW1">Ledger HW.1</a> costs 15€ and comes with free shipping. 

* Table of Contents
{:toc}

## Security
The Ledger HW.1 is an HD Bitcoin USB wallet, meaning the 24 word seed generated on setup is all that's needed to backup the entire wallet. The original 24-word seed is generated using RNG from the device and the computer. This spreads out the source of entropy. 

The HD seed is then generated offline on the HW.1's smartcard and displayed on your computer’s screen. This is the main problem with the Ledger HW.1: it doesn't have a screen. Since the seed is displayed on your computer’s screen, setup your HW.1 on an offline computer or bootable operating system. Ledger offers a <a rel="nofollow" href="http://buybitcoinww.co/ledgerstarter">USB drive called Ledger Starter</a> which you can use to setup your HW.1 securely. 

A 4-digit pin code is added on setup. The pin code is required to view balances when plugged into any computer and for each transaction. Three incorrect guesses of the pin code will wipe the device.

The Ledger HW.1 comes with a security card that provides extra two factor authentication and prevents man in the middle attacks. The HW.1 uses the security card as 2-factor authentication because it lacks a screen. 

Each time you need to send a payment you will be asked to input some of the letters or numbers from the recipient address using the security card. 

![ledger security card][sc]{: .img-responsive .kb-helper}

Using the example security card shown above,  *b* equals *9* while *x* is *1*. Each security card is unique and provides two-factor authentication in the case that your HW.1 is stolen. If someone has your HW.1 and your pin code, but not the securty card, they won’t be able to send your funds.

The HW.1 uses an CC EAL5+ smartcard to securely sign Bitcoin transactions.

## Setup and Initialization

To setup your HW1 you will need to use the [Ledger Wallet Chrome extension](https://chrome.google.com/webstore/detail/ledger-wallet/kkdpmhnladdopljabkgpacgpliggeeaf) or the <a rel="nofollow" href="http://buybitcoinww.co/ledgerstarter">Ledger Starter</a>. Using the Ledger Starter is more secure because it creates your seed in a secure enviroment. 

<iframe width="690" height="388" src="https://www.youtube.com/embed/6_Zdw1f1Los?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>

## Privacy

As with any hardware wallet, using your device is only as private as the software wallet it’s used with. Many software wallets have support for the HW.1: Electrum, [Mycelium](/wallets/mycelium/), Copay, GreenBits, GreenAddress, Coinkite, and the Ledger Chrome wallet. Electrum, Mycelium and Coinkite support Tor and can offer additional privacy. Copay can be used with a Bitcore full node which is also a very private way to use your HW.1. 

## Ledger Mobile Apps

Unlike the [TREZOR](/wallets/trezor/) or [KeepKey](/wallets/keepkey/), the HW.1 doesn't have a screen that can be used to verify outgoing transactions. Instead, Ledger's [iPhone app](https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=960196441&mt=8) or [Android app](https://play.google.com/store/apps/details?id=co.ledger.wallet) can be used a screen to confirm payments. This isn't ideal, as the mobile apps will in most cases run on internet-connected devices. It is, however, a decent solution for a hardware wallet with no screen. 

## HW.1 vs. TREZOR 

TREZOR and the Ledger HW.1 are often compared. The main difference is TREZOR offers a screen, the ability to add a passphrase to the HD seed, and offline setup by default. The Ledger HW.1 wins in terms of price but offers less features and arguably less security. 

## HW.1 vs. KeepKey

The main difference between the Ledger HW.1 and KeepKey is that KeepKey has a screen, while the Ledger HW.1 does not.

## HW.1 vs. Paper Wallet

The Ledger HW.1 may be better than a paper wallet for less technical users. Paper wallets can be hard to setup and it's easy to make mistakes. The HW.1 makes creating secure offline storage easy. Although paper wallets are just as secure if created correctly. 

## Promo Code

There are currently no Ledger promo codes available. If a coupon or discount code becomes available, we'll update this post. 

## Does the HW.1 Work with Litecoin?

The HW.1 can be used to store Litecoin, DASH, and other altcoins. It's up to software wallet developers to integrate support--the device itself is compatible with any altcoin. 

[sc]: /img/wallets/ledgercard.png
