-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2013 at 10:57 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `costrichdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_users`
--

CREATE TABLE IF NOT EXISTS `active_users` (
  `username` varchar(50) NOT NULL,
  `auth_method` char(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `md5_skey` varchar(255) NOT NULL,
  `twfbUserID` varchar(255) NOT NULL,
  PRIMARY KEY (`md5_skey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_users`
--

INSERT INTO `active_users` (`username`, `auth_method`, `access_token`, `md5_skey`, `twfbUserID`) VALUES
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAJR69TlRi6vQOVkPv40EjoEIJrglov1IZA5j8f1sgByJManfOGAP1UfnOSFAvWHPZAVPO2VIKdIanoYpHaYu5ZBxkfOpYeOZAB77RxXldjNjicZAxQ1dFUvA4iZBpakXvfWeZAs8g4TuQ5imZBzWn2RYDrY8WX3DNVZCMLONeGnVv3lwY2P980YXuXNg0o3kELAZDZD', '019b15767611ba04ba23b536089e5ab7', '100002539190958'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBABXDbnohjrJZBZBd4GMTCelNjCxDZAfwnetZCKZAgiNDiEHr8VZB1yM6izW1XTlrha1doN80yuLiLmCAUWZBtDyJsfV6sotLjJjZBwbwr28r4UVWQnmUcplCdKqANImZC4VZAlZCZC1PzSiCIoxjNucmByQvWDLpy2KBuAZDZD', '01ee034fd046aa1efddc743b491f9d0f', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAJ18GYZAAhUVRCxxf0MOCmHBYrWc4QRqVra2a2BqxbRsamriH6tC6zJjXZCgDCvh4zACEl8SvNAXGHJtw4KbUG8ZBTM2dMI6ZBHq6iVcH5ZB37UiwO4OTqTwdG6mk25G8WnLiBXdlefaiuPqdaJ0ZD', '072b50ab4e22de89ba0f8fa07f9bf18e', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAOFlHGkNvaeJ2gAsnyBPiquZAqKcPgyO0zOxLvaZBZAMZCUWJ7qJpqQ0QJQPfVoZCT7YraYtJDGtVQH5QmZB1Sv58tfddZA0K09GUX7wZAMaYz2DcaSInaReh9PrkhnIpEBLOVNUt9Na', '0c99d2b9454f53748cc9ec2fee17ee2e', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBADJ7wfzCcKo1GHMkKvm3HLo5xGNG2SycV9pHe37MgFC5aSxbXFwkopYUSkZAOGJaYbhSPVfSVDsul3shuuISd3vrrjyCrGUBW2OLb2a9cUtwwlENnwrEAa3WjJHYj9maT8CuSKZCGTuVRrOu6ov4aqbZCZBNggZDZD', '0d4c7c733d852519060dc1e7c66582a5', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBADZACDwKD00M7DP3EWoe9MhQp070Fk5mhef5OVd9y0VKAol6s3GWZB9nmic97lZADCqkkPojlbbnnxXwoZA8LZBztGArwdScO0KTkC6242DKcK9gYLQi2dawBZBibTotYzINFBxkPv75YoNaypaoJ1giCR6Qhi925fItmv7cYAI2bu2KZAY1nbGoAENBUij0ga6L2tqVoQ0', '164681cd007be12096e1282773f76225', '735559659'),
('Nav Gates', 'fb', 'AAAHzVJ96ZAmYBAIqkMFHCTebUeUoTFaVI8ZAZBWyajOZAvMjcZBZCQog4ZB74IbD6ItvgpTVibcgeKgNLl6FiYVzEjCLITUprSCTocaSFNmBY99jyGHRxuD', '17ba519c1593331e14d57a757681a3e1', '100002539190958'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBABah4ZCZBdDZCgvQIldSJUUNUntlpXlE6zGTIsVArQIH3rzIQJaWxPUa1EjNkscfRCuTPEkkZBk3u3qaoxRhRS5INfbbvfWP0c3jA2EDuhZBp6OlYMhhiEfwINzvDLDIGSdE95HhfcsFCwZACyJyP6XhZC4oZAmcrvw3UJPk5q6S4VR9c1XJvoSELpNAh40511ne9mbPgdXWxpXhOUJFxxIZD', '17c3ee1ce76e59f0b35a5b844adc57aa', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAHKu2hK4pr1uA55ZBKKYTWB6xbU10UrFSLAXNG87OJRZAXBrakKylPZArZCsMD2GVzvpvafLtRot6v0YxX9EwBgRhpJkfeJ55YTXD3RNRNxTiBwc8VwUSkvZBWmYk8SdZCle5VUN713aUDrYSUWrzblZCWS4NGHQAZDZD', '1bcdf606a239f230dda4d3292a7b2c6e', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAMD5qlcA0NtnYzu2FgqEuHCMZCg6skk6ZALurWypoHmRvUWOK7qphZCNyA0RTf9JZAFRiBDMPqU98u361VKpJx799ZB0Wqwu6yFpH7nUHKjVIJEDfi7KY96P32U9kg0iluCHFNixlehrcJEZBnfGqIoPx4I9dIMhEZAaR3yeidmNVuECgQ1qZB6RT2FVPIQYOSWlLKL6Sd4QGWopOF32Rm299itVzu7MJwZDZD', '1e09aea26618786a4377933e94fdfa5f', '100002539190958'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBAAZAXOVGzu7GkZCKDhxtjTlZC1B8cWmY1aN9HO4sgtWggTvxrSC8PXCMhf5npz2UH9snY5sLyrdCi7ig4fVj4HnwsA8EZAPWd5kZC6Gw9Ac6ONy3byx1NU3ZBlUS2cS0RWtMICus81rfjlDrnlBuB485U5w8ovgd12MiqAhYBTbf0SN6ZBFw5HZAVRBgrVaKBHRZAF7Pej3TobKKrynmSZCwkZD', '24c4b19fc1b9e60265658d576788a8ff', '735559659'),
('Serge Douchkina', 'fb', 'AAAHzVJ96ZAmYBAILmIOeJE6AGKZBMoq8TqPb5hxRBzuZAElH6tqUNiLDhlezGDq8qrZB2z2pIBfam8WyuL4d903NNWb3Kll4OK5F83qs8wZDZD', '295ece15ba7cbca6e70a1aac343c475e', '735559659'),
('Muhammad Faraan Ashraf', 'fb', 'BAAHzVJ96ZAmYBAPPyyS9f087JgOAIsPZBkbnJoTa4ouTBQTHzY9BkXG5YHHVYfCef6lBea66PJTtEOLXmJOMNtmiXVHeKTVd3XvJbdAuHn1GDgc2SxmTOpdpuswUW1Yd5pES9ADL3G6acjDQb9mZAZB8dWR8Ef0JKCbtVJpOY1VIJCqhjbSDeP96eYp39ylYMDRhDGOrwlRRiiq3QE9R', '296a629c31027f43fcaf42f95e118a1e', '817865243'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBALANjPTIk9Sm57xnFJAbc4ANj8RsVOPjF2kZBNiy0rk9N9amp79OsfYv2cJ07QUAkY9w6oXUPkToelZBW3BPu5UV226LxLyQX9ACPG7HNQZBiG1vNZBHlZAh7WNBbqS3g1KtNcAcZC8ZC4gpSzUmasZD', '2d93a74b654ba9b80717d77e2be753a6', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBAAEgNhrXN8RHJ71REOgcwWk7d9gC9FB1hFTSX7cWmcRh87ZAJb6GjzkoBC8t4QDDSPzuYOd4ctEaXBQFmMzUJdrlcJixinpZB7EAu7zlnAGuP1L03evlF8slZBz5ZCHeftp2QDBFWyBgDdL5Jw0MCJsMVY6hZBZAz1WvQNEBPZBkAoTwyi5ZBNg3CYr2brs8rLEucG5b18ZBNnPCHsiJwAHMZD', '34052516113aab96dfac11d3e687a299', '735559659'),
('Serge Douchkina', 'fb', 'AAAHzVJ96ZAmYBAK97OMiJzYo0ZACuDQ3mV76t9ZC28yndRleazySo1qaAaqMEAgLZA9QgiZBdw5vmrwHySklntQYVKMgzQZBGijOKwbq9UOAZDZD', '39499c113a1ff108c8aa5f1b70a0fa39', '735559659'),
('Serge Douchkina', 'fb', 'AAAHzVJ96ZAmYBAL24C5xWEZBUW4IZCd1gLR2sv8YVy0GNCr4OCbKRZBkhSYTj4umcnKs9ZBQo0cmgQRhyWlG6gYEb94f6LDGSxG2oTTv3kQZDZD', '402b3ca28a6d61ade2571dae15d8fad7', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBABxrhstmadmsHjJ2fZBoIZBjJoiEpHn3kV0Szo6HwNHKBrAhoZAywKllygvHZAhxXno8GdnfZA2Ts66XxrAa6HZA3FbLOolomS6YCWVJg3MHnrW4oXbLs6g4SBd7QQHRiZCNguZCQ1kUT2TgAE3E7WQZD', '45c854cc7144b5a41e6a0c8cf10d0e0b', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBALHJztgu5u09KuNHHnGmOKyMSVeACpE2WrSfr3LJTHkbd3rB1BRIe4vPIYQdTNm5bXhPfu4o75G8wZCKZBUjRmvth0w5o2C5GCBcXMgmC3Gg3p3eDnj1njsR5Iz938P9aKNomUSfaahHR8TRUZD', '45fdb3e48ab5421e8030fa88ccb8988f', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAMZCFOybY5G5acUxA2mrJvZBN8ciwZAIrbbqddK4FqZA91aXUUdx1r9ZBLOJpU7uT3FKIZAZBulAElaFyVRpRWg0K2PZCutRYTZA1I28GbZBRNQzY4TU0unCiQapAvqVfZCRgZA8cJZBYqZCEgpdGEXMpCQsAy6rqsIGULr8KpfOesZAGcOWl9YW2Roz8H1kdX4UOIZCYQZDZD', '4bb7cf3bd6a4e018aa62121cef5f0b82', '100002539190958'),
('Chary Soto', 'fb', 'AAAHzVJ96ZAmYBANanwgiKZB2RxDGobUMNVDUrs7o6RZCtRBXeT3YlEeX3DUDEvDudYuX9SiDuMmk7PPd2DJ3eEOdrZCmI7fVLBw9H9GhUAZDZD', '4cee5d0118c1621415dc034316e4ea97', '551480625'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAIMPjZAZCPlOFB3QlmS6pOwlFta9YO3sXPyH9t2RZCRnyRz3vvyOgpd1Xmy6gsjWAQWoGVvUXOuzk0qyG0ufxZCwN2ig6OA7Muy8iJ0CAwhjjzrqz31XOe17uZCDTP8BHwNnXmZBXOh1XZB8CRy6ZA0ZD', '51db62edc03c3056a1617b6b7f13b527', '735559659'),
('Serge Douchkina', 'fb', 'AAAHzVJ96ZAmYBAEZCd9MM6llP0VHNFxfiHYw9J9KB8XQaAzVCWcC1FwBuznfxsowQCoNNPnP1oGnz0Lf12jwS3UtTka3yAybHa2bLpfwZDZD', '52d910803fb7c72bdf486fc44049eecc', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAHQtqic1mj25AMCPWzItZB7voVN0Q11GnK7TNhBEjL6AQSoijXBYE2BKACV9rBlFM2pdXjUS1nV07KYlO7mJ9Eba36RbtdQl8wfBX3mBv34YvwZC4sjwt8ocUD4Cdgii3a60WKqTVfQD9dIkV5cVDdnrx1OcnXfPskPsmnwYH1kZAItg5tDPM7HMxTUWgZDZD', '536fab6f1358327b7e1858c18edc2abe', '100002539190958'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAAtphYKmwGxZCY4a1Ly6s4A7oq0msCb2bkOihHpVa3t5eKVmZCH4so6uaMbkXhoFxZCToyFdG9DDEHo68Yu2xPzuMPvpC3ESZCdZCRaiu3OJuDPU8yiuw9XWxNnU8E2lJi0xRqZAgm3ASI5s4tkCoO184Vs8K0uOY5CY8w8GtpctBO7ziblxkZD', '557d74c1c6a5a3a7ff7d9543dcc6e548', '100002539190958'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAPjFZBqrGnS0lwuANgno9DbQQcZBgK2DkLZBIc9uuAzZCd6VXfVwpFGtdJe46snWogrP4NZCXvTtdgy8mnXzvwUnocKZASSv4DPB4xLkEeBQArXEDplWlVdXiTvrI7kPBTpPHZA2fPnGKsMcZCU1lHoZD', '561136b67271ec07cb8d945b63db82a8', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAI8AoVGJmWvyUagyPEeudWBFgyy4Yx6HjZBWp2g4Ig3EgfPdXjZCGZAVv6aTO7XPhBrTgOlLdkLYZAsLmcrutIXaWWkjYSuphaCGZCErnskB8ZBhZBohKoTsdFabc0oq8JSp25ZAmDWuTw90UiTFMyUk4Fpj4cTFyQZDZD', '562b96df9a171cfede353b523778b01e', '735559659'),
('Serge Douchkina', 'fb', 'AAAHzVJ96ZAmYBAOUDnEIzxdzbM7afONZBETII4SSRdmQ7QnGrGer064dCa3LWIoO9NaBQfxDCQxh6q6fJYz3nB7yVVIk4uBjW2f7NLCwZDZD', '5b37e5b2a770c505d02e2e8b26382f2a', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAEzbIvZBNZBiQtFfFgBAdSZCATljTbfWBTKPbndl4PRm9l4RwNeZBZBAjfHWGBCrGTDxeQzw9uGqvcNESNHGra3EhZC904SlcxVCz2ZCJZCkrlt0MRItwJapCRZA1zQZCItgKcj7gnr8fP18uZAMXdg1TMZD', '62b6df3e85626466401c7ea642dcf41b', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAHZC1CzQjlRcXdrEC76VezOGjfmZA6FDYoSw1wUD7LRFrisqfthWJSZAZBLKf7xJFDjD6NSXE6ZArXT0p94gZBOHRa3V1EznZBQmVHoBuGTSMI4HEThTZAU1e0rCZBkR1caGoTBxitXIbzgyDTUZA1YaMZD', '73c37a461c15c857fe58f708262d8482', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAMUSxWElKM2rUtDmvrnFzrAMwcMZB9zCpsCaZBTTSnK9SySbwFhkPG9CT5DQZBTccs7CR60RpnnTTtZBj2hr1MX3qvcLwvfiR5CyZAZBaR3u4oH1Hii5HmLqNUFJ8wTZArZC84ZCGfIZC1iIFkoZCYxGDvtMuKtJeCoLLHDqEoJz9qE1UeBr6n59pBwTTaiNIlN2zaSwBvA4AVxwFE5GbhmRZCMZD', '7fe02af538559d2ecc6319096c5b9603', '100002539190958'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAFnHRx9RvkXzAUVhSvfcSsX7mBie8IZAYaeYRlgEMyZBR7xCQInRTZAoCCUgb6gIuDhvbTVLaRsyxrV2HiywhVKEXiCmEUaSOGfaCVr2BruJgTeba3ZBXqhiLXPsrvsecciwjpGcDT1K6bxVJKR7Gs12pOoMtAZDZD', '81e5200b40a1a3360eb8af4ee68c301b', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBAO7VFognpR6YVaTZC7KAC7SKLNff4vw9xok1i3tP5JcVecL2bAfcKTeCVcmLe5OxATWod7Rzilx2omUszWqDTOnXqNCYryiHLJpNKLlA1ZAdAd2f8L3Czd1SjoIGT6wGX2Yx00Ko39fWAAQssho8raOZBwToPUJ4ex4P1gWbrqZBJEjKIroZD', '83d9a413b3a36024b977001d107df6e7', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAFdnRuSWvMmY3n904ZCtg7WHi4psFNv0iLXiAFQZAl93tMBXoEkGNXvlQbHTG0IYx1PmbaJEQZBagZAgnok1DIvTJwp0nt6TYcrbZBrMvzkexpihqhm4iMBubr3clscUuZCgQZAZAeVrl21Px8Pz8zoZD', '86b5decb45a5345bfefef21aef698fc1', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBANG9sxO3EZCfHLPJiFwiJwBDolag73XK1B7p0ZADY4olZAvft4OVFOsBO5umWT1UDpfFMlqUVfo23MZBHn997fffQ9w9UrmXpj8rsw5HHuNDdFE5ZCxy7cRKM65kEtgYabKWKG3Wqp5qJA8xq34ew3lZBvZBZAvrv288AOl3dSI3', '8be6faf638b6ad223fb242ec2cdb867a', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBANKXzqlVgQLgknGQiezEpAeAHLKjCHomDbbmza5dGVKPcOBIBkrsSCvlkuDOmLZAZCmxmHAdau9ZB3IxEmvWpYKgwbpVFhH0iuSlVDgZCPEcgbgtRB8nRQtazSwTAZC5NgdUg84f6d4j4mnetFPNuZBS4qlUXbp9ArhH3Ja7OZB', '8c578bd3083cf2346ca7351cf4a2ed8b', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAJ86ziwM4dbVZCQVqyZAq5mxAzvfwVI65G9DquNv7e7xBaDH9AZBlB7ZCvMger0C7JgrL95JVJB6ZBZB4kAP6su2K5QrBfYDKepql84qRo5Vhlk2OTUQBva1yvlE3dea1wRIrjRaN4kaPbRXGSSnQZD', '8d18583ca28be92534b10f93915f5b9b', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAOrqKY4HbZCIckjYnZAA2PKsZA0ueWSL3VpuAHoAs1x1sJgvYSkvyvx7MonyrgPPDRTnUJUuCBlz8bTPEAbEf5Mbm6hZAKZC0YRv1Uv7Vj17fPBt8tQcLg7nF1ZCTHXvLoVuknWnuEyGo4ZCdod2rkZD', '94a07fe8c04e80b01e088ddf91222268', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAEbKz4hZBmUsZCiEDy48IRRlAVGjcsWCLjFELvh6ZATlAby5ZAZCNOjzl6x8soI9BVPu0JJzWUOIxKoQ4mqTCTVY1tUoyw27qz92z9Tg55JyppQjBZC9Jz29sWg0akYvgIM5rZA6G7wRBqBcp0sFZA8ZD', '96fdee75628e132c39e239101d3f4cdd', '735559659'),
('Baneet Grover', 'fb', 'CAAHzVJ96ZAmYBAFopiFb3kUjIhRcu7NOiTBZBfatm2W82WoTZCEUrD7oedXNaxfKDVP5AjAdORxiD96ewtY4iZAvj5buA6Xvy1cFW6n2t4fjZBhXEsZAfPZBVYB36ZAnwo6vXOwgKMnAjGuTT68ZCYzL3qUkBTInSSHdTekvWXYIfOQZDZD', '9ba911a85cdb881d582609219753935d', '592675360'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBALxIDG7mZB0zrThZAmroTfCmyXmoTJleB820PRVaVdrUzZBhTxcuxjPrdmi8ksv0y3CjkX1yZCrjWxVzDel5rHAEJsZCvbieDA8CxUHezKXpXkrPZCil7n885kZAr8PuRg0pPYK6xMaMY5NPGkinkHGucD7WUu8wQZDZD', '9ef11940af14d70ebeda28e68dd4b42f', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAMoSMp4Y7lxkLalbs86AWX7rt3vdTNLDlHCoMhViTnYh09Coh7vmLddSYoqT98CuprbGExXgVcRPLkCzi2yvLcngaBAkfV5rmSZCEH0b2GjAno5ttFQoZC3FGD93kZBRqzjYLOSe75xNhd4FxYZD', 'b44c3e2df19288cd44fb79a67a930d85', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAAARdhJmFfbuy9e81MUmAxJvI423MoZA83jZCiRV1GHKZCTZBy9bIWBAHZBQHZC9b6C1QTMMRQdvU9g6IagMahPGIWZA6bguycOkk491O5p5CdnieNcCaT2JwwhA2KjZBYsKkD3uilSSxhdmNQurNP0ZD', 'b4f3559991835b41e3e83551c3ab869e', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAJJ8uFKhpqJv3ZClk8i8iaWEJM0JCbAlzntvS86ccX1DSMp2r9tOTW0TKrqmN51gOnKp1nN9S7ZBDSUdYMDhlZCJgc2EZBeMPP5Xf8EEJm5KlZBRovFEdSjGEMjTD0vOgql7myWoSrAp71uObNKUZD', 'bafc7422747f145ae3400a3608d47356', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAGhAyKIgvHUJfXicZAimPm8zoQxeHyo8jUBZAWZBYBc2RwHYZC8bowYc8wZC1EyL4UcYORoVwfbysix1U76WlxIsMyE0BhwzZBqCrZCKInLvk826ZAl8DswrFDsWVEy5WuxukZCv9yQK6k3ZBJzIzfMZCpLwRMR5znpZBN3pr1ejMTUxZAZBk5rq24DwoMhEUodAfdvAZDZD', 'c413794814f4f54107700cbb855aee00', '100002539190958'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBADTNQBUYEeQdLJxDGJUcs0hnyiCHZAYFzKUZBvYC2Bc1i6K93azDQFXyHKD4ClYI6EZAorbZAFcr4hgEUjFdcQQ0uWXTfWDovktVOkGPeM75hfDoHXJTiEywwpd5bLguR0gUwb3IZCmLwp7ETBiWduSPrpm3AwgZDZD', 'c47293024733ead2008e6de88563bc5f', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAJgS5bX8nPnMD0D2dh8TjyJXB5PMFCIEQYvjvUr2TIjl4z9PyCjZCEKFNgPU4nBqC8i3C8q7z2biyoOFVYc19KBrEXvzESSHdoYd5dS1fc2rAVlST2UYttjwf1ZCZC65dZBqZCadvLS96JOZCue9PjxWVLZA0htfofxSf9LWzVpuJgl2OIt6WX1wO4QU7nZCZCopJZB0jkGhx4yWVS3ZBfMk5EZD', 'c9b152e7dd5a8e73ca2cecd119f44a96', '100002539190958'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAIsPjsJTb7pp30rCd5OozLA2b5PxHphMMR4p8tBFVF7JNSX03hZATjfESXtk3QELYiIZBV95tbttagRZAgZB4tmZA6jJ8p7HDHEtylVE5IHmHqlVrgi5cgTU2YnJb3tUuxTIsKUwDVOf971lLX7AZD', 'd2e4b838c238aefb301d7d0fe3ce29ef', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAAbtNQqcoZAcQQmUVsl7R3y8JQILSZClIiEze7AxkTqVVfAACjdsC72cXj4uyZC7ZC7XRwZBLzAhKtgGk25pIWMtPhiqTpzaJ4LbTOCzgYo4RmW6WGpnzKxPGB0bXudIeiEohrJsXYBUP5Q6FxZANZA269vWpizdAZDZD', 'd900130c471f93413ef512a59ec474bb', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBACO7YXZAORKhpgu2mGaoaNIK84cR20wx0hzGOnQ3z3ZCTPxTPbHX07Ncnvrwx73PifoOFbHpKD52m0I256SvgXGQpUnVSndca8pIVvTa9NK3wxzB7Ip2HQq8oQh1YrPUBZBO75QQwZAgq09NeBcctkhrcoPutZAZBMPsQEZAe9BHZCUzZB2GW5t46vGIjbzEi9JRVXa2Rc9qA', 'dd52d918776af05f61260fd2671d99d7', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAISi0EDdDDdwF4GlI422g6oUpHD5rcLxNWvtZC6vf96DxsWkhbAoeIYvQpu6jnuG9xQei4giZBcD13gZAYBXSHHVBH70AL3dpi2KFzkqB0UxvTdZB3XyDsvB4oHqZCmcXE3nyZCII6kU2m644eWPxMq0bFvxWZBRQZDZD', 'eb6a18c937a807baa4ff80833f54c3df', '735559659'),
('Serge Douchkina', 'fb', 'BAAHzVJ96ZAmYBAF4d2rZAd5ZCJo20YNotRThESQMmMy0IYAVk1golOsZCS5yjsMZCj4Y4HsAlZCKbrZCCY9kvdDKDJAvEnQ3a1BFl21f8eAmXRYV2esTwhD8eBiIhnt5dLYhprwqZB1Kw0AVLDZBZB7CkGZAYPqUHISyJyjjfc97sradnOmHoPU54iZCFw1mwZAoIRyCLvWyT17eZCe6C3dXkHZBtjJ', 'f17e399e102a4ebfaab51d5f47ccdb23', '735559659'),
('Nav Gates', 'fb', 'BAAHzVJ96ZAmYBAMQvHvZAVMu553WZBiVEtWAWZC5dZCgy2ZAD9t5MTh1ztVmr3mYXPOEmvWjgLM4AZBaK3o2xhsFqg3V4Mnzqhw5YDKJJJVVwvUSLBz24VqzmHo2fnZALyOZBTatjJDDxvAbwjCUTbcKIYskNVUhZAOJajHGu6jxnqOZAGVaSET4LHr1hGKir1CG2NEjznquE8RcwZDZD', 'f3bc4d47554c03d5689b9d419c0b9c98', '100002539190958'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAK7PC4dZB3gv6ZAIrXkRUSPcWzpBNvnPFgnxBqYDnPuWTgKDpAflhBECb7aZCVYoPNZAgiGLlrM5wDS08wv5Mt1e03kT4sP9YjHsQPculTQ0uTp9cU8oXWBSGxLLinL9oapfnFDEUIn5Gjqt6W0kvooEP4h0ZCwZDZD', 'fb17eed9fa53667c63ed40a1c589a93a', '735559659'),
('Serge Douchkina', 'fb', 'AAAHzVJ96ZAmYBAB6sI2HucOtzPqqJ6BVhOn7dd42hxf189OBj6ZAyfU2HoMtqoifBvVsXFvGyPkVRwag7fLwZBu7Il30tm2xZB5fkvt8SAZDZD', 'fb2ab1f4bee5bc5d38186929c7f742bd', '735559659'),
('Serge Douchkina', 'fb', 'CAAHzVJ96ZAmYBAIKNBEWZAhGQVWKydHpfc9PTdzlYLZBeutwLJe6aRXtjtG2jR8QlgXNdqCZAasnRo62dEvaciX5e42pSvoElXyjfklt64N63ZB3m94ed8aF27BqCHtxAzO7Mun3yocGHzhZCr4ACfbfFUsAeUM6umL6355KReSgZDZD', 'fd362b5e9de817b8ec3e446d1a6f74db', '735559659');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category`) VALUES
('Awkward'),
('Cute'),
('Fail'),
('Prank'),
('Sexy'),
('Silent');

-- --------------------------------------------------------

--
-- Table structure for table `hashtag`
--

CREATE TABLE IF NOT EXISTS `hashtag` (
  `hashtag` varchar(140) NOT NULL,
  PRIMARY KEY (`hashtag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hashtag`
--

INSERT INTO `hashtag` (`hashtag`) VALUES
('Animals'),
('Baby'),
('Beach'),
('Bloopers'),
('Celebrity'),
('DIY '),
('Fail'),
('Family'),
('Food'),
('Gay'),
('Girls'),
('Global'),
('Health'),
('House'),
('Hurt'),
('Money'),
('Nationality'),
('Nature'),
('People'),
('Pool'),
('Pop Culture'),
('Pranks'),
('Relationships'),
('Science'),
('Silent Video'),
('Sports'),
('Technology'),
('Transportation'),
('Travel'),
('Workout');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `locId` int(10) unsigned NOT NULL,
  `country` char(2) NOT NULL,
  `region` char(2) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postalCode` char(5) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`locId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_media_user`
--

CREATE TABLE IF NOT EXISTS `social_media_user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` char(100) NOT NULL,
  `lastvisit` int(11) NOT NULL DEFAULT '-1',
  `lastactivity` int(11) NOT NULL DEFAULT '-1',
  `birthday` date NOT NULL,
  `ipaddress` char(15) NOT NULL DEFAULT '000.000.000.000',
  `image-url` varchar(1024) NOT NULL,
  `login-type` enum('vb','fb','tw') NOT NULL,
  `post` int(11) NOT NULL DEFAULT '0',
  `twfbUserID` varchar(255) NOT NULL COMMENT 'Assigned Twitter or Facebook ID',
  `joindate` date NOT NULL,
  `reputation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `social_media_user`
--

INSERT INTO `social_media_user` (`userID`, `username`, `email`, `lastvisit`, `lastactivity`, `birthday`, `ipaddress`, `image-url`, `login-type`, `post`, `twfbUserID`, `joindate`, `reputation`) VALUES
(27, 'Baneet Grover', 'baneetgrover@gmail.com', 0, -1, '1993-10-12', '65.92.94.211', 'https://graph.facebook.com/592675360/picture', 'fb', 0, '592675360', '2013-03-11', 0),
(28, 'Nav Gates', 'mangawire@live.ca', 0, -1, '1989-10-13', '99.228.183.57', 'https://graph.facebook.com/100002539190958/picture', 'fb', 0, '100002539190958', '2013-03-12', 0),
(29, 'Serge Douchkina', 'sz88ev@gmail.com', 0, -1, '1988-07-16', '65.94.88.246', 'https://graph.facebook.com/735559659/picture', 'fb', 0, '735559659', '2013-03-12', 0),
(30, 'Navjot Minhas', 'nm07ti@gmail.com', 0, -1, '1989-10-13', '99.228.183.57', 'https://graph.facebook.com/100004694193358/picture', 'fb', 0, '100004694193358', '2013-03-14', 0),
(31, 'Muhammad Faraan Ashraf', 'faraanashraf@hotmail.com', 0, -1, '1993-03-12', '216.121.200.123', 'https://graph.facebook.com/817865243/picture', 'fb', 0, '817865243', '2013-03-14', 0),
(32, 'Nav', '', 0, -1, '0000-00-00', '99.228.183.57', 'https://twimg0-a.akamaihd.net/sticky/default_profile_images/default_profile_5_normal.png', 'tw', 0, '1065415314', '2013-03-19', 0),
(33, 'Chary Soto', 'mariadrsoto@gmail.com', 0, -1, '1965-11-08', '74.213.83.13', 'https://graph.facebook.com/551480625/picture', 'fb', 0, '551480625', '2013-04-02', 0),
(34, 'Manny Singh M', 'the_young_one_07@hotmail.com', 0, -1, '1986-10-12', '99.228.183.57', 'https://graph.facebook.com/658200053/picture', 'fb', 0, '658200053', '2013-04-23', 0),
(35, 'Giovanni Gabbana', 'roflvidzse4rfv@gmail.com', 0, -1, '1988-01-02', '65.94.215.96', 'https://graph.facebook.com/100005865160362/picture', 'fb', 0, '100005865160362', '2013-05-14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `video` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `category` varchar(30) NOT NULL,
  `tag` varchar(140) NOT NULL,
  `url` varchar(2083) NOT NULL,
  `url_md5` varchar(32) NOT NULL COMMENT 'To make sure URL''s added to the video table are unique',
  `rtsp` varchar(2083) NOT NULL,
  `youtubeID` varchar(20) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `upvote` int(11) NOT NULL DEFAULT '0',
  `downvote` int(11) NOT NULL DEFAULT '0',
  `fb-shares` int(11) NOT NULL DEFAULT '0',
  `fb-like` int(11) NOT NULL DEFAULT '0',
  `fb-click-through` int(11) NOT NULL DEFAULT '0' COMMENT 'How many people went to the site from fb',
  `tweets` int(11) NOT NULL DEFAULT '0',
  `duration` smallint(6) NOT NULL COMMENT 'Measured in seconds',
  `thumbnail` varchar(2083) NOT NULL COMMENT 'The youtube thumbnail for the video',
  `twfbUserID` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`video`),
  UNIQUE KEY `url_md5` (`url_md5`),
  KEY `category` (`category`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=222 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video`, `title`, `category`, `tag`, `url`, `url_md5`, `rtsp`, `youtubeID`, `score`, `upvote`, `downvote`, `fb-shares`, `fb-like`, `fb-click-through`, `tweets`, `duration`, `thumbnail`, `twfbUserID`, `date_added`) VALUES
(2, 'Meanwhile in Russia - Top 5 videos *REALLY FUNNY*', '', '', 'https://www.youtube.com/watch?v=DhAavcVIcMQ&feature=youtube_gdata_player', '5cfd815af6ab75648e92f865aa6136ff', '', 'DhAavcVIcMQ', 3621, 0, 1, 0, 0, 0, 0, 220, 'DhAavcVIcMQ.jpg', '1065415314', '2013-02-28 05:30:11'),
(3, 'Meanwhile In Russia.', '', '', 'https://www.youtube.com/watch?v=ogt1aWjcA2M&feature=youtube_gdata_player', '66bad25a19e7a474e1bcbcb6536c76e8', '', 'ogt1aWjcA2M', 3429, 1, 0, 0, 0, 0, 0, 424, 'ogt1aWjcA2M.jpg', '1065415314', '2013-02-28 05:30:28'),
(5, 'Fail Compilation of the Month January 2013', '', '', 'https://www.youtube.com/watch?v=02J6fTko7aE&feature=youtube_gdata_player', '3901c0cd61594eda67d10cb305a0bd79', '', '02J6fTko7aE', 19531, 0, 1, 0, 0, 0, 0, 440, '02J6fTko7aE.jpg', '1065415314', '2013-02-28 05:31:11'),
(6, 'Fail Compilation of the Month October 2012', '', '', 'https://www.youtube.com/watch?v=pM0wxQTe3as&feature=youtube_gdata_player', '8c7dd0fc9fac87326bd84199bfce4ab1', '', 'pM0wxQTe3as', 6533, 1, 1, 0, 0, 0, 0, 311, 'pM0wxQTe3as.jpg', '1065415314', '2013-02-28 05:31:28'),
(7, 'Put Your Number In My Phone.', '', '', 'https://www.youtube.com/watch?v=1mRM1VwUiYA&feature=youtube_gdata_player', '42907be677d30972c426a0a9d4d5ed7e', '', '1mRM1VwUiYA', 55157, 1, 0, 0, 0, 0, 0, 238, '1mRM1VwUiYA.jpg', '1065415314', '2013-02-28 05:31:54'),
(8, 'Russian Hitman Gets Arrested!', '', '', 'https://www.youtube.com/watch?v=jYifL5uI_18&feature=youtube_gdata_player', 'edac2877846de5841f52a6a978b88878', '', 'jYifL5uI_18', 4279, 0, 0, 0, 0, 0, 0, 79, 'jYifL5uI_18.jpg', '1065415314', '2013-02-28 05:32:14'),
(9, 'Feeding The Homeless Prank', '', '', 'https://www.youtube.com/watch?v=fO4etpYGn7E&feature=youtube_gdata_player', '63009a03c0fb60b674375d8251de163e', '', 'fO4etpYGn7E', 38007, 1, 0, 0, 0, 0, 0, 112, 'fO4etpYGn7E.jpg', '1065415314', '2013-02-28 05:32:28'),
(10, 'Epic Prank On Cops - Drinking In Public', '', '', 'https://www.youtube.com/watch?v=wNlGtxJH4LY&feature=youtube_gdata_player', 'fafb2a111e3e51691a8487be52499574', '', 'wNlGtxJH4LY', 5305, 1, 0, 0, 0, 0, 0, 182, 'wNlGtxJH4LY.jpg', '1065415314', '2013-02-28 05:32:46'),
(12, 'Striptease Prank with Just For Laughs Gags!', '', '', 'https://www.youtube.com/watch?v=pmQo7GEMBdU&feature=youtube_gdata_player', '41d36498c1f15805f9db324eb4803d0b', '', 'pmQo7GEMBdU', 1023, 0, 1, 0, 0, 0, 0, 162, 'pmQo7GEMBdU.jpg', '1065415314', '2013-02-28 05:33:36'),
(14, 'Robot Chicken: Toy Story 4', '', '', 'https://www.youtube.com/watch?v=PGuTN_ilmEk&feature=youtube_gdata_player', 'e7d7b472162616c2bc6451b2c6934044', '', 'PGuTN_ilmEk', 14254, 3, 5, 0, 0, 0, 0, 128, 'PGuTN_ilmEk.jpg', '735559659', '2013-03-04 19:40:57'),
(15, 'Stealing Skateboards Prank!', '', '', 'https://www.youtube.com/watch?v=oyYHYBFFQ9E&feature=youtube_gdata_player', 'bbcb8aef6f25671a2e9b0e668e880e33', '', 'oyYHYBFFQ9E', 5853, 1, 0, 0, 0, 0, 0, 210, 'oyYHYBFFQ9E.jpg', '100002539190958', '2013-03-06 08:07:31'),
(16, 'The Letter B Prank', '', '', 'https://www.youtube.com/watch?v=gJuGKJaSyVU&feature=youtube_gdata_player', '2d187e51cded5efb410fd625e0af7171', '', 'gJuGKJaSyVU', 30047, 0, 1, 0, 0, 0, 0, 184, 'gJuGKJaSyVU.jpg', '100002539190958', '2013-03-07 05:50:42'),
(17, 'Do You Even Lift?', '', '', 'https://www.youtube.com/watch?v=H2Diy0RNe_c&feature=youtube_gdata_player', 'ed7408e34cac839c76016363bd40ebfc', '', 'H2Diy0RNe_c', 87368, 1, 0, 0, 0, 0, 0, 267, 'H2Diy0RNe_c.jpg', '100002539190958', '2013-03-07 05:54:06'),
(18, 'How To Pick Up Girls On Valentine''s Day!', '', '', 'https://www.youtube.com/watch?v=hgxTXwJpNDo&feature=youtube_gdata_player', 'd7d55da45074bf49f80d4abe1ee14134', '', 'hgxTXwJpNDo', 2847, 2, 1, 0, 0, 0, 0, 266, 'hgxTXwJpNDo.jpg', '100002539190958', '2013-03-07 05:59:12'),
(19, 'Cops Get Owned!!! - Epic Pee Prank', '', '', 'https://www.youtube.com/watch?v=N7TzPEYci_w&feature=youtube_gdata_player', 'a1fe2df43ea2732f87d2a0ae3a00d2ea', '', 'N7TzPEYci_w', 123099, 1, 1, 0, 0, 0, 0, 196, 'N7TzPEYci_w.jpg', '100002539190958', '2013-03-11 01:16:07'),
(22, 'Embarrassing Pick Up Lines (ft.Simple PickUp)', '', '', 'https://www.youtube.com/watch?v=5ANy1UD8-x0&feature=youtube_gdata_player', 'ff84c3445c660f40ec375429eaaf6ada', '', '5ANy1UD8-x0', 1597, 2, 1, 0, 0, 0, 0, 346, '5ANy1UD8-x0.jpg', '100002539190958', '2013-03-14 07:35:16'),
(23, 'Epic Fire Prank!!', '', '', 'https://www.youtube.com/watch?v=hjCrOPFaQL4&feature=youtube_gdata_player', '6b4f85978bebf653dae9145a48c6ea89', '', 'hjCrOPFaQL4', 9852, 1, 1, 0, 0, 0, 0, 136, 'hjCrOPFaQL4.jpg', '100002539190958', '2013-03-14 20:39:13'),
(24, 'VALENTINE''S DAY PROPOSAL PRANK!', '', '', 'https://www.youtube.com/watch?v=FtVXvN5S6MI&feature=youtube_gdata_player', 'dbf9aa457ea015fb6ef1b6f8aea5d956', '', 'FtVXvN5S6MI', 48739, 0, 0, 0, 0, 0, 0, 186, 'FtVXvN5S6MI.jpg', '100002539190958', '2013-03-14 20:40:43'),
(31, 'Small Penis Prank by Tom Mabe', '', '', 'https://www.youtube.com/watch?v=xibtzwdXgfI&feature=youtube_gdata_player', 'c1acd756d515382e03c8d72ec3efab7e', '', 'xibtzwdXgfI', 2030, 1, 0, 0, 0, 0, 0, 257, 'xibtzwdXgfI.jpg', '735559659', '2013-03-14 21:55:34'),
(32, 'Dreamgivers', '', '', 'https://www.youtube.com/watch?v=HVThdBBJA_0&feature=youtube_gdata_player', '7cb359c54964878233183fcc59aeba1e', '', 'HVThdBBJA_0', 233, 1, 1, 0, 0, 0, 0, 330, 'HVThdBBJA_0.jpg', '735559659', '2013-03-15 07:45:16'),
(35, 'Extremely Offensive Pick Up Lines: Get Her Number! (ft. VitalyZDTV)', '', '', 'https://www.youtube.com/watch?v=yllNZP_3l48&feature=youtube_gdata_player', 'e6f73e94bc47cb95ea695ba450237140', '', 'yllNZP_3l48', 2412, 2, 0, 0, 0, 0, 0, 306, 'yllNZP_3l48.jpg', '100002539190958', '2013-03-17 01:06:31'),
(36, 'Nikola Tesla vs Thomas Edison.  Epic Rap Battles of History Season 2.', '', '', 'https://www.youtube.com/watch?v=gJ1Mz7kGVf0&feature=youtube_gdata_player', '76ffef8d0ca8c7a06e4de7c5214405ed', '', 'gJ1Mz7kGVf0', 141140, 0, 0, 0, 0, 0, 0, 124, 'gJ1Mz7kGVf0.jpg', '735559659', '2013-03-17 22:00:54'),
(37, 'Merry Christmas 2012', '', '', 'https://www.youtube.com/watch?v=SeUGn8jXG34&feature=youtube_gdata_player', '14b08dd46746333db9ea477f08651f7a', '', 'SeUGn8jXG34', 2547, 1, 0, 0, 0, 0, 0, 95, 'SeUGn8jXG34.jpg', '100002539190958', '2013-03-17 22:18:00'),
(39, 'St. Patrick''s Day Guinness Pint Headbutt', '', '', 'https://www.youtube.com/watch?v=MrHx504SFSs&feature=youtube_gdata_player', '0b736ce812c230d0c029206b8e3c9975', '', 'MrHx504SFSs', 387, 0, 0, 0, 0, 0, 0, 37, 'MrHx504SFSs.jpg', '735559659', '2013-03-18 02:11:06'),
(40, 'There Will Be Grunts', '', '', 'https://www.youtube.com/watch?v=ORPY4HG5TOc&feature=youtube_gdata_player', '3cb20a8c485d5aa8572e0f6b6d7462e3', '', 'ORPY4HG5TOc', 14184, 0, 0, 0, 0, 0, 0, 260, 'ORPY4HG5TOc.jpg', '735559659', '2013-03-18 02:11:24'),
(41, 'Bring The Heat Stunt', '', '', 'https://www.youtube.com/watch?v=Y_2QfgtXfpI&feature=youtube_gdata_player', '879ba40f796c1063cfd270f1d6ccea7d', '', 'Y_2QfgtXfpI', 115, 0, 0, 0, 0, 0, 0, 245, 'Y_2QfgtXfpI.jpg', '735559659', '2013-03-18 02:11:47'),
(42, 'Pooping Without Your Phone', '', '', 'https://www.youtube.com/watch?v=tUoFUCk3TvM&feature=youtube_gdata_player', '4c0a8d6b920edf2b67ded5255d894bae', '', 'tUoFUCk3TvM', 3942, 0, 0, 0, 0, 0, 0, 220, 'tUoFUCk3TvM.jpg', '735559659', '2013-03-18 02:12:05'),
(43, 'Nathan For You: Billy''s Deli and Cafe', '', '', 'https://www.youtube.com/watch?v=btJWbVycaGU&feature=youtube_gdata_player', '911d296d16fc5ed4d82b92fba6fa75ae', '', 'btJWbVycaGU', 159, 0, 0, 0, 0, 0, 0, 215, 'btJWbVycaGU.jpg', '735559659', '2013-03-18 02:13:19'),
(44, 'Dom Mazzetti vs. The Harlem Shake', '', '', 'https://www.youtube.com/watch?v=uLsrWqENTi8&feature=youtube_gdata_player', 'f04437b55c1a9ddb4e05c1d187193825', '', 'uLsrWqENTi8', 11753, 0, 0, 0, 0, 0, 0, 139, 'uLsrWqENTi8.jpg', '735559659', '2013-03-18 02:13:45'),
(45, 'Hulk Turds - Epic Meal Time', '', '', 'https://www.youtube.com/watch?v=pmwehapSA_U&feature=youtube_gdata_player', '6f34183f019adfae7e720f1c82ef870c', '', 'pmwehapSA_U', 2831, 0, 0, 0, 0, 0, 0, 271, 'pmwehapSA_U.jpg', '735559659', '2013-03-18 02:14:02'),
(46, 'Going, Going, Gonads! FAILs', '', '', 'https://www.youtube.com/watch?v=apVZCG5zAxw&feature=youtube_gdata_player', '83227f000ffbd77488aee399ad53fcb8', '', 'apVZCG5zAxw', 817, 0, 0, 0, 0, 0, 0, 78, 'apVZCG5zAxw.jpg', '735559659', '2013-03-18 02:14:20'),
(48, 'DUBSTEP SOLVES EVERYTHING 3', '', '', 'https://www.youtube.com/watch?v=vygiNAk8d9Y&feature=youtube_gdata_player', 'e2127c300438a7ec688e69f5c8b7c535', '', 'vygiNAk8d9Y', 11382, 1, 0, 0, 0, 0, 0, 198, 'vygiNAk8d9Y.jpg', '735559659', '2013-03-18 02:15:04'),
(49, 'Living Alone', '', '', 'https://www.youtube.com/watch?v=lxLjpl_Tp54&feature=youtube_gdata_player', 'd54bca804217d805c1c56aee8c4026f8', '', 'lxLjpl_Tp54', 5422, 2, 0, 0, 0, 0, 0, 234, 'lxLjpl_Tp54.jpg', '735559659', '2013-03-18 02:17:06'),
(51, 'Kid does amazing trick with table cloth', '', '', 'https://www.youtube.com/watch?v=QN0tc4RhQnI&feature=youtube_gdata_player', '368ca4bb3a8cb7a9f9c983cf55738ce4', '', 'QN0tc4RhQnI', 18036, 0, 0, 0, 0, 0, 0, 14, 'QN0tc4RhQnI.jpg', '735559659', '2013-03-18 05:49:51'),
(53, 'Best Fails of the Week 2 March 2013', '', '', 'https://www.youtube.com/watch?v=RppG4HeJBIQ&feature=youtube_gdata_player', '2340f0df8499d7b021cd14d032616d51', '', 'RppG4HeJBIQ', 5283, 0, 0, 0, 0, 0, 0, 377, 'RppG4HeJBIQ.jpg', '735559659', '2013-03-18 17:08:30'),
(54, 'TRYING TO HUG BROS', '', '', 'https://www.youtube.com/watch?v=NC0ilv0BU-M&feature=youtube_gdata_player', '9b6663fdfeb2995e029951a647d6c5c1', '', 'NC0ilv0BU-M', 160, 0, 0, 0, 0, 0, 0, 155, 'NC0ilv0BU-M.jpg', '735559659', '2013-03-18 17:16:22'),
(55, 'Public Prank - Pot Dealers', '', '', 'https://www.youtube.com/watch?v=cBKfICSIgR0&feature=youtube_gdata_player', '3e222d4d6084ed66d654c0d5df3f1eb7', '', 'cBKfICSIgR0', 5588, 0, 0, 0, 0, 0, 0, 319, 'cBKfICSIgR0.jpg', '735559659', '2013-03-18 17:21:16'),
(56, 'Annoying Orange Vs. Minecraft', '', '', 'https://www.youtube.com/watch?v=j521FwIsAM8&feature=youtube_gdata_player', 'b2913dadc124af62639efe7d8353e49d', '', 'j521FwIsAM8', 2245, 0, 0, 0, 0, 0, 0, 200, 'j521FwIsAM8.jpg', '735559659', '2013-03-18 17:24:00'),
(57, 'Little Buzz Prank', '', '', 'https://www.youtube.com/watch?v=BCCgySH0ROU&feature=youtube_gdata_player', '7f113539d492a286f0277feb388ae319', '', 'BCCgySH0ROU', 8195, 0, 0, 0, 0, 0, 0, 161, 'BCCgySH0ROU.jpg', '735559659', '2013-03-18 17:27:10'),
(58, 'CAN''T STOP FALLING! (Prank)', '', '', 'https://www.youtube.com/watch?v=etRLdSUSkaY&feature=youtube_gdata_player', '5374a4f7cc048fb4f94f9c4bc5e6b0d7', '', 'etRLdSUSkaY', 7948, 0, 1, 0, 0, 0, 0, 298, 'etRLdSUSkaY.jpg', '100002539190958', '2013-03-19 04:52:10'),
(60, 'Party Knockout', '', '', 'https://www.youtube.com/watch?v=eELsM3DATK4&feature=youtube_gdata_player', 'a5fa12f01a67e0b3d5e7b1b522bcfb63', '', 'eELsM3DATK4', 80, 0, 0, 0, 0, 0, 0, 63, 'eELsM3DATK4.jpg', '735559659', '2013-03-20 17:05:12'),
(61, 'Spring Break Out Your Muscles (ft. Xtreme Trips)', '', '', 'https://www.youtube.com/watch?v=yF1Yu38e8xU&feature=youtube_gdata_player', 'd54cedf5ac2f6e5f7e0248d6dd01b448', '', 'yF1Yu38e8xU', 4472, 1, 0, 0, 0, 0, 0, 223, 'yF1Yu38e8xU.jpg', '735559659', '2013-03-20 17:05:27'),
(62, 'St. Patricks Day vs. The Morning After', '', '', 'https://www.youtube.com/watch?v=PeLoJZ7SZk8&feature=youtube_gdata_player', 'c0a0db8f03bf9c3f493db95f76e2710d', '', 'PeLoJZ7SZk8', 717, 0, 0, 0, 0, 0, 0, 193, 'PeLoJZ7SZk8.jpg', '735559659', '2013-03-20 17:09:19'),
(63, 'Chocolate Breakfast - Epic Meal Time', '', '', 'https://www.youtube.com/watch?v=9GlZwdrBOUQ&feature=youtube_gdata_player', 'c177914af49373dd1f3f783624fbd61e', '', '9GlZwdrBOUQ', 9776, 0, 0, 0, 0, 0, 0, 242, '9GlZwdrBOUQ.jpg', '735559659', '2013-03-20 17:11:14'),
(64, 'KISSING STRANGERS IN HOLLYWOOD!', '', '', 'https://www.youtube.com/watch?v=ZUbpVsGvdVQ&feature=youtube_gdata_player', 'f14b54bd44d6a84e7bd41b880a83da27', '', 'ZUbpVsGvdVQ', 199, 0, 0, 0, 0, 0, 0, 218, 'ZUbpVsGvdVQ.jpg', '735559659', '2013-03-20 17:20:45'),
(65, 'POOL NOODLE PRANK', '', '', 'https://www.youtube.com/watch?v=XKySRsUgHpE&feature=youtube_gdata_player', '58646b9c90c6348f29b26c1d527385f8', '', 'XKySRsUgHpE', 94, 0, 0, 0, 0, 0, 0, 255, 'XKySRsUgHpE.jpg', '735559659', '2013-03-20 17:24:41'),
(66, 'Public Prank - Box Scare Prank', '', '', 'https://www.youtube.com/watch?v=5iXeXnP8ERw&feature=youtube_gdata_player', '2af04fb33d3e0fed6dbd75b707b9781f', '', '5iXeXnP8ERw', 241, 0, 0, 0, 0, 0, 0, 147, '5iXeXnP8ERw.jpg', '735559659', '2013-03-20 17:27:10'),
(67, 'The Ultimate Girls Fail Compilation 2013', '', '', 'https://www.youtube.com/watch?v=vd56sASkDkM&feature=youtube_gdata_player', '1903e4f4e3bc80f163008bf8f71b0ee3', '', '', 33, 1, 0, 0, 0, 0, 0, 266, 'vd56sASkDkM.jpg', '735559659', '2013-03-21 16:40:04'),
(68, 'Kapooyow! Ka-pool-ya! Funny Weather Report (ORGINIAL)', '', '', 'https://www.youtube.com/watch?v=KW8yhZPByBI&feature=youtube_gdata_player', 'c7c127264fa853e38ab1cbf0eb0278e6', '', '', 868, 0, 0, 0, 0, 0, 0, 34, 'KW8yhZPByBI.jpg', '735559659', '2013-03-21 22:57:05'),
(70, 'Shady Sluts Prank!', '', '', 'https://www.youtube.com/watch?v=TCCg-zuhM8M&feature=youtube_gdata_player', '8c0616d79e8c5cdbd5736e01bddbbc1a', '', 'TCCg-zuhM8M', 3865, 0, 0, 0, 0, 0, 0, 221, 'TCCg-zuhM8M.jpg', '100002539190958', '2013-03-23 04:00:21'),
(74, 'Worst 100 Pick-Up Lines of All Time', '', '', 'https://www.youtube.com/watch?v=_PRpHuPVYLE&feature=youtube_gdata_player', 'e88fa940e6199ea6ac127ccff4c76fa5', '', '_PRpHuPVYLE', 32061, 0, 0, 0, 0, 0, 0, 509, '_PRpHuPVYLE.jpg', '100002539190958', '2013-03-25 01:58:24'),
(75, 'Funny Hooters Prank - Tom Mabe', '', '', 'https://www.youtube.com/watch?v=-zFK3a2QZaw&feature=youtube_gdata_player', '9ddd263bfa9486af014af519ea908a93', '', '-zFK3a2QZaw', 3860, 0, 0, 0, 0, 0, 0, 225, '-zFK3a2QZaw.jpg', '735559659', '2013-03-25 03:30:55'),
(76, 'My Drunk Aunts - Gay Neighbors', '', '', 'https://www.youtube.com/watch?v=QhAHTuF2hl0&feature=youtube_gdata_player', '65433a6fdd7250ab741174470423ced8', '', 'QhAHTuF2hl0', 152, 0, 0, 0, 0, 0, 0, 172, 'QhAHTuF2hl0.jpg', '735559659', '2013-03-25 05:45:43'),
(77, 'The Ben Show: Austin Flowers Auditions', '', '', 'https://www.youtube.com/watch?v=ggWdQ1G9kxA&feature=youtube_gdata_player', '0845a91f6dff7707f14cd46f771bc477', '', 'ggWdQ1G9kxA', 45, 0, 0, 0, 0, 0, 0, 80, 'ggWdQ1G9kxA.jpg', '735559659', '2013-03-25 05:47:39'),
(78, 'Best Fails of the Week 3 Compilation March 2013', '', '', 'https://www.youtube.com/watch?v=lVY0d0S5Oak&feature=youtube_gdata_player', '0283d8afeb1577d377e1480b4880b27d', '', 'lVY0d0S5Oak', 3685, 0, 0, 0, 0, 0, 0, 338, 'lVY0d0S5Oak.jpg', '735559659', '2013-03-25 05:47:59'),
(79, 'Gears of War: Judgment with Kumail Nanjiani', '', '', 'https://www.youtube.com/watch?v=MRDZMSbdmUM&feature=youtube_gdata_player', '63c739c58742ae4e772035b689299a6a', '', 'MRDZMSbdmUM', 18, 0, 0, 0, 0, 0, 0, 892, 'MRDZMSbdmUM.jpg', '735559659', '2013-03-25 05:51:15'),
(80, 'Cowbell In The Hood and The K-9 Prank Call by Tom Mabe', '', '', 'https://www.youtube.com/watch?v=ZfKe6JMmndU&feature=youtube_gdata_player', '217535dc1c076dadeda01d8edc35c39d', '', 'ZfKe6JMmndU', 56, 0, 0, 0, 0, 0, 0, 250, 'ZfKe6JMmndU.jpg', '735559659', '2013-03-25 05:57:07'),
(81, 'TOP 5 FAILED PRANKS', '', '', 'https://www.youtube.com/watch?v=w45OOBpUOQ0&feature=youtube_gdata_player', 'f37372bc01f4a0c9364cbf46ded06556', '', 'w45OOBpUOQ0', 170, 0, 0, 0, 0, 0, 0, 295, 'w45OOBpUOQ0.jpg', '735559659', '2013-03-25 06:03:18'),
(82, 'Annoying Orange - Annoying Marshmallow', '', '', 'https://www.youtube.com/watch?v=XmE4Qyd35is&feature=youtube_gdata_player', '8cd8a1f3ff53e87054c2dc613e975ead', '', 'XmE4Qyd35is', 4036, 0, 0, 0, 0, 0, 0, 229, 'XmE4Qyd35is.jpg', '735559659', '2013-03-25 06:06:18'),
(83, 'The Amazing Accent Challenge | ThatcherJoe', '', '', 'https://www.youtube.com/watch?v=uy_BvCBJ8ZM&feature=youtube_gdata_player', 'f9c6908331952ddee395b99a3d17b7fd', '', 'uy_BvCBJ8ZM', 1693, 0, 0, 0, 0, 0, 0, 508, 'uy_BvCBJ8ZM.jpg', '735559659', '2013-03-25 06:07:13'),
(84, 'Gwiyomi Funny Thailand by จักกิด วัยรุ่นเมกัน V.2', '', '', 'https://www.youtube.com/watch?v=dc429gvmlVQ&feature=youtube_gdata_player', '621f82b45b3be32abce280352bdf8195', '', 'dc429gvmlVQ', 11273, 0, 0, 0, 0, 0, 0, 57, 'dc429gvmlVQ.jpg', '735559659', '2013-03-25 06:09:16'),
(85, 'Romney vs Obama Debate - Funny Lip Reading/Syncing', '', '', 'https://www.youtube.com/watch?v=fdXAcIhzbMs&feature=youtube_gdata_player', '787660a1e3ada15a5d449eb8a67fb27b', '', 'fdXAcIhzbMs', 1, 0, 0, 0, 0, 0, 0, 196, 'fdXAcIhzbMs.jpg', '735559659', '2013-03-25 06:25:16'),
(86, '"PETER & GWEN" — A Bad Lip Reading of The Amazing Spider-Man', '', '', 'https://www.youtube.com/watch?v=D7jtpy0lfBU&feature=youtube_gdata_player', '8765d09df8bfdcc379bcb1173049a142', '', 'D7jtpy0lfBU', 50940, 0, 0, 0, 0, 0, 0, 138, 'D7jtpy0lfBU.jpg', '735559659', '2013-03-25 06:27:12'),
(87, 'KAPOOYA - AUTOTUNE REMIX! (Original)', '', '', 'https://www.youtube.com/watch?v=zP_Kr6i7itM&feature=youtube_gdata_player', '96faf9da911ff1a38b627f9beb30169c', '', 'zP_Kr6i7itM', 27014, 0, 0, 0, 0, 0, 0, 128, 'zP_Kr6i7itM.jpg', '735559659', '2013-03-25 06:43:56'),
(88, 'The Ben Show: Preview - National Spelling Bee - Uncensored', '', '', 'https://www.youtube.com/watch?v=N6DOjirNG5Q&feature=youtube_gdata_player', '84c64f8cd6e0fa9e361157f9373b7911', '', 'N6DOjirNG5Q', 64, 0, 0, 0, 0, 0, 0, 83, 'N6DOjirNG5Q.jpg', '735559659', '2013-03-28 16:25:00'),
(89, 'First World Dog Problem', '', '', 'https://www.youtube.com/watch?v=EON5NlQHxRY&feature=youtube_gdata_player', '37b465c810dbebb9a68856bdd7f4b5bb', '', 'EON5NlQHxRY', 287, 0, 0, 0, 0, 0, 0, 80, 'EON5NlQHxRY.jpg', '735559659', '2013-03-29 06:07:28'),
(90, 'Freakouts - Most Awesome', '', '', 'https://www.youtube.com/watch?v=eHniKlRQhBg&feature=youtube_gdata_player', '6a380b0e6bbd3ee129aed99cb7d51290', '', 'eHniKlRQhBg', 862, 0, 0, 0, 0, 0, 0, 238, 'eHniKlRQhBg.jpg', '735559659', '2013-03-29 14:47:24'),
(91, 'Bacon Beer Can Chicken - Epic Meal Time', '', '', 'https://www.youtube.com/watch?v=7DycWLAAEwY&feature=youtube_gdata_player', 'b1b09789f4b3383c9be6478e97dc35d9', '', '7DycWLAAEwY', 4006, 0, 0, 0, 0, 0, 0, 182, '7DycWLAAEwY.jpg', '735559659', '2013-03-29 14:47:45'),
(92, 'Old Angry Drunk Man Gets Stuck', '', '', 'https://www.youtube.com/watch?v=iDO3IPjnOzM&feature=youtube_gdata_player', 'afc0a90c16b6010d3b77ece1f376d869', '', 'iDO3IPjnOzM', 75, 0, 0, 0, 0, 0, 0, 104, 'iDO3IPjnOzM.jpg', '735559659', '2013-03-29 15:10:29'),
(93, 'Танец толстяка', '', '', 'https://www.youtube.com/watch?v=qfQng2kjpxI&feature=youtube_gdata_player', '8c51e8aa37498bbc00a42930fcfb1767', '', 'qfQng2kjpxI', 74090, 0, 0, 0, 0, 0, 0, 294, 'qfQng2kjpxI.jpg', '735559659', '2013-03-31 18:20:49'),
(94, 'Happy Easter from Playboy.com & Playmate Amanda Cerny', '', '', 'https://www.youtube.com/watch?v=iCKa9nfnk44&feature=youtube_gdata_player', '9ca47ebefca563b61150ed8598e34b8f', '', 'iCKa9nfnk44', 77, 0, 0, 0, 0, 0, 0, 92, 'iCKa9nfnk44.jpg', '735559659', '2013-04-01 07:15:03'),
(95, 'Happy Easter from Kate Upton', '', '', 'https://www.youtube.com/watch?v=Sw8JubySczk&feature=youtube_gdata_player', 'c14ed47554c1e24d2b95c196e0567cf5', '', 'Sw8JubySczk', 79, 0, 0, 0, 0, 0, 0, 75, 'Sw8JubySczk.jpg', '735559659', '2013-04-01 07:23:10'),
(96, 'Kids Scared By Easter Bunny (Real Funny)', '', '', 'https://www.youtube.com/watch?v=ja7jQ2N48Ec&feature=youtube_gdata_player', '252f7a1006bb7af731973a9f67407bf0', '', 'ja7jQ2N48Ec', 16349, 0, 0, 0, 0, 0, 0, 32, 'ja7jQ2N48Ec.jpg', '735559659', '2013-04-01 07:44:56'),
(97, 'Crazy man funny Accident from Poland Part 1', '', '', 'https://www.youtube.com/watch?v=dRa8KLXnAGk&feature=youtube_gdata_player', '44b0b052d717e925dde5cb72bf5a2cd0', '', 'dRa8KLXnAGk', 2, 0, 0, 0, 0, 0, 0, 53, 'dRa8KLXnAGk.jpg', '735559659', '2013-04-01 17:49:55'),
(98, 'The People vs Winter', '', '', 'https://www.youtube.com/watch?v=xKy2lLNQYrI&feature=youtube_gdata_player', 'b71697586e62cee104c627e0f705c925', '', 'xKy2lLNQYrI', 41814, 0, 0, 0, 0, 0, 0, 192, 'xKy2lLNQYrI.jpg', '735559659', '2013-04-01 20:33:08'),
(99, 'April Fools News Report 2013. Penguin in Dalston, East London. Must see!', '', '', 'https://www.youtube.com/watch?v=Xb6nbQBtDPg&feature=youtube_gdata_player', '8f7d2fff51043eaad3900dca15782d02', '', 'Xb6nbQBtDPg', 219, 0, 0, 0, 0, 0, 0, 63, 'Xb6nbQBtDPg.jpg', '735559659', '2013-04-01 20:40:58'),
(100, '5 Easy April Fools Pranks 2013', '', '', 'https://www.youtube.com/watch?v=wq_pVAtH0yg&feature=youtube_gdata_player', 'cb7a24c32caf9464b07520418c120a3e', '', 'wq_pVAtH0yg', 11, 0, 0, 0, 0, 0, 0, 220, 'wq_pVAtH0yg.jpg', '735559659', '2013-04-01 20:41:09'),
(101, 'Jon Hamm - 7 Minutes in Heaven', '', '', 'https://www.youtube.com/watch?v=sEl8RRiMH7M&feature=youtube_gdata_player', 'f4b70183819822b7006d27a07dd56abf', '', 'sEl8RRiMH7M', 1098, 0, 0, 0, 0, 0, 0, 247, 'sEl8RRiMH7M.jpg', '735559659', '2013-04-03 17:05:10'),
(102, 'Celebrity Prank - VitalyzdTv vs. RomanAtwood - OUT PRANK', '', '', 'https://www.youtube.com/watch?v=6CfeUXSYRbg&feature=youtube_gdata_player', '0bbfb7c09e3d21961b96b0da51ebd204', '', '6CfeUXSYRbg', 113, 0, 0, 0, 0, 0, 0, 233, '6CfeUXSYRbg.jpg', '735559659', '2013-04-03 20:10:19'),
(103, 'Ultimate Wedgie Jumping Stunt', '', '', 'https://www.youtube.com/watch?v=Xvfw89chlfQ&feature=youtube_gdata_player', '6f3e8730b1929e537b06b3f4334e5d4f', '', 'Xvfw89chlfQ', 1433, 0, 0, 0, 0, 0, 0, 125, 'Xvfw89chlfQ.jpg', '735559659', '2013-04-03 20:13:34'),
(104, 'Trolling the Girls of WonderCon 2013', '', '', 'https://www.youtube.com/watch?v=doklaQ8TVKg&feature=youtube_gdata_player', '7dd4fc7e9b8466028075a2d7769afda5', '', 'doklaQ8TVKg', 51, 0, 0, 0, 0, 0, 0, 295, 'doklaQ8TVKg.jpg', '735559659', '2013-04-03 20:21:47'),
(105, 'SAYING FUNNY YOUTUBE COMMENTS TO PEOPLE IN A BLACK SUIT', '', '', 'https://www.youtube.com/watch?v=_FwuIayT4vk&feature=youtube_gdata_player', '1684ec0661ba2557316c66ebf677315f', '', '_FwuIayT4vk', 293, 0, 0, 0, 0, 0, 0, 259, '_FwuIayT4vk.jpg', '735559659', '2013-04-03 20:26:31'),
(106, 'Dom Mazzetti vs. Spring Break 2 (ft. Xtreme Trips)', '', '', 'https://www.youtube.com/watch?v=ldQdcDJxIos&feature=youtube_gdata_player', 'faa449b3d0798d00c8876985f84d7906', '', 'ldQdcDJxIos', 2475, 0, 0, 0, 0, 0, 0, 291, 'ldQdcDJxIos.jpg', '735559659', '2013-04-04 11:19:49'),
(107, 'Meat Tank - Epic Meal Time', '', '', 'https://www.youtube.com/watch?v=q-sY6ZYPEZQ&feature=youtube_gdata_player', 'b527583f334398e368a634ea2717f553', '', 'q-sY6ZYPEZQ', 7828, 0, 0, 0, 0, 0, 0, 242, 'q-sY6ZYPEZQ.jpg', '735559659', '2013-04-04 11:20:16'),
(108, 'How NOT To Throw A Beer', '', '', 'https://www.youtube.com/watch?v=imzIXs_mc9E&feature=youtube_gdata_player', 'fc6c6deb81c1fbb2bdfe67988ba194c0', '', 'imzIXs_mc9E', 215, 0, 0, 0, 0, 0, 0, 52, 'imzIXs_mc9E.jpg', '735559659', '2013-04-04 11:22:28'),
(109, 'Pranking Orlando Florida | Drunk & Pregnant Lesbian in Public | Grumpy Cat', '', '', 'https://www.youtube.com/watch?v=HqRjX86stGo&feature=youtube_gdata_player', 'c675ef3614ec83ed138c5280a6c69dee', '', 'HqRjX86stGo', 112, 0, 0, 0, 0, 0, 0, 303, 'HqRjX86stGo.jpg', '735559659', '2013-04-04 11:24:12'),
(110, 'How to be UFC Fighter', '', '', 'https://www.youtube.com/watch?v=12wc8LpEBhw&feature=youtube_gdata_player', 'b196078cdd30b0bb2fecc3125b86394e', '', '12wc8LpEBhw', 620, 0, 0, 0, 0, 0, 0, 287, '12wc8LpEBhw.jpg', '735559659', '2013-04-04 12:52:38'),
(111, 'Giving Cops A Buzz! - PRANK', '', '', 'https://www.youtube.com/watch?v=xilrvBZoSOU&feature=youtube_gdata_player', '7268e9af28d40d0b5b29a5fa60471dff', '', 'xilrvBZoSOU', 8045, 0, 0, 0, 0, 0, 0, 196, 'xilrvBZoSOU.jpg', '735559659', '2013-04-04 12:58:08'),
(112, 'THE GIRLFRIEND (Emo Dad Ep #2)', '', '', 'https://www.youtube.com/watch?v=WGMc9W5uZwY&feature=youtube_gdata_player', 'c84326731d50df0104e19cb56b1049d7', '', 'WGMc9W5uZwY', 1266, 0, 0, 0, 0, 0, 0, 205, 'WGMc9W5uZwY.jpg', '735559659', '2013-04-04 13:04:46'),
(113, '2013 the most funny fail video compilations', '', '', 'https://www.youtube.com/watch?v=m1VqDBjWqEM&feature=youtube_gdata_player', 'dd8e253116f26f814bd134402363b607', '', 'm1VqDBjWqEM', 1, 0, 0, 0, 0, 0, 0, 364, 'm1VqDBjWqEM.jpg', '735559659', '2013-04-04 13:08:05'),
(114, 'My Funny Dog', '', '', 'https://www.youtube.com/watch?v=pt4aWxiq_pE&feature=youtube_gdata_player', 'd2c7be531ef99bc7739cf93fb223badd', '', 'pt4aWxiq_pE', 1, 0, 0, 0, 0, 0, 0, 32, 'pt4aWxiq_pE.jpg', '735559659', '2013-04-04 13:11:37'),
(115, 'The Racquetball Trick', '', '', 'https://www.youtube.com/watch?v=gXLSikl8xSk&feature=youtube_gdata_player', 'cc8c7118e86804c4150833cb65803806', '', 'gXLSikl8xSk', 383, 0, 0, 0, 0, 0, 0, 5, 'gXLSikl8xSk.jpg', '735559659', '2013-04-06 01:05:37'),
(116, 'Fox news accurately recreates a bear encounter.', '', '', 'https://www.youtube.com/watch?v=ihpG_NJ_T1g&feature=youtube_gdata_player', '4218108bb112e06584431bc499ee9f38', '', 'ihpG_NJ_T1g', 2850, 0, 0, 0, 0, 0, 0, 11, 'ihpG_NJ_T1g.jpg', '735559659', '2013-04-06 01:11:11'),
(117, 'GIRLFRIEND GETS REVENGE!', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=-xveHM27tA0&feature=youtube_gdata_player', 'a0b2b676d0e672d721f45092f5ffe75d', '', '-xveHM27tA0', 14187, 1, 0, 0, 0, 0, 0, 203, '-xveHM27tA0.jpg', '100002539190958', '2013-04-23 03:26:01'),
(118, 'Do You Even Lift? Gym Edition...', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=wZGenX_Vwk0&feature=youtube_gdata_player', '76d012f786b7a476c25278ebfe0f1c89', '', 'wZGenX_Vwk0', 24825, 0, 0, 0, 0, 0, 0, 307, 'wZGenX_Vwk0.jpg', '100002539190958', '2013-04-23 03:38:46'),
(119, 'Selling Cocaine In The Hood Prank!', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=QFHE7dHWiNg&feature=youtube_gdata_player', '30729300621a9cbdd4bd4267a2303f82', '', 'QFHE7dHWiNg', 7585, 0, 0, 0, 0, 0, 0, 221, 'QFHE7dHWiNg.jpg', '100002539190958', '2013-04-23 03:39:27'),
(120, 'The Jitter Prank - Ohayocon', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=KcgBhpZSu8Q&feature=youtube_gdata_player', '7694d8a562c7d026f1e595b1cf2310fe', '', 'KcgBhpZSu8Q', 2590, 0, 0, 0, 0, 0, 0, 159, 'KcgBhpZSu8Q.jpg', '100002539190958', '2013-04-23 03:40:14'),
(121, 'Attacked By Ferrari Owner - Pee Prank', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=0Pj8QKTvRTQ&feature=youtube_gdata_player', '3e2278344e73f62b488ae6c4527dc976', 'rtsp://v5.cache2.c.youtube.com/CiILENy73wIaGQk0Re-kQPz40BMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '0Pj8QKTvRTQ', 23163, 0, 0, 0, 0, 0, 0, 70, '0Pj8QKTvRTQ.jpg', '100002539190958', '2013-04-23 03:40:54'),
(122, 'Sex Noises In A Library', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=2i0z0A0prRs&feature=youtube_gdata_player', '73420608335d59ff2c19a1d82f251ccd', 'rtsp://v4.cache6.c.youtube.com/CiILENy73wIaGQkbrSkN0DMt2hMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp'' type=''video/3gpp', '2i0z0A0prRs', 2218, 0, 0, 0, 0, 0, 0, 260, '2i0z0A0prRs.jpg', '100002539190958', '2013-04-23 03:42:42'),
(123, 'VASELINE HIGH FIVE', 'Funny', 'Pranks', 'https://www.youtube.com/watch?v=DK0WqEDYADs&feature=youtube_gdata_player', 'bfd3f7be3b13cdc2993d77b3b3fb4f72', '', 'DK0WqEDYADs', 2436, 0, 0, 0, 0, 0, 0, 206, 'DK0WqEDYADs.jpg', '100002539190958', '2013-04-23 03:46:11'),
(124, 'Best Fails of the Week 3 April 2013', 'Funny', 'Fail', 'https://www.youtube.com/watch?v=uT6pQcIybG0&feature=youtube_gdata_player', 'adee88bf4740cbbccc96bd1bf6835aaf', '', 'uT6pQcIybG0', 3820, 0, 0, 0, 0, 0, 0, 267, 'uT6pQcIybG0.jpg', '100002539190958', '2013-04-23 03:47:03'),
(126, 'baby', 'Funny', 'Baby', 'https://www.youtube.com/watch?v=pfxB5ut-KTs&feature=youtube_gdata_player', '10969bb0c449241f4d19b59d7934f854', '', 'pfxB5ut-KTs', 1498137, 0, 0, 0, 0, 0, 0, 77, 'pfxB5ut-KTs.jpg', '735559659', '2013-04-23 17:52:50'),
(128, 'Adult Babysitter | Bad Ads PRANK', 'Prank', 'People,Pranks', 'https://www.youtube.com/watch?v=BfBAid4GHFs&feature=youtube_gdata_player', 'b9d88ed212f2d81d06c03fb98f0b7f3f', 'rtsp://v7.cache3.c.youtube.com/CiILENy73wIaGQlbHAbeiUDwBRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'BfBAid4GHFs', 74, 0, 0, 0, 0, 0, 0, 231, 'BfBAid4GHFs.jpg', '735559659', '2013-04-30 03:44:43'),
(130, 'The Lineup - Sandwich Club', 'null', 'People', 'https://www.youtube.com/watch?v=qk29EGvwwxE&feature=youtube_gdata_player', '1901c9950a40f1367f5fcfa4d6a516b0', 'rtsp://v7.cache8.c.youtube.com/CiILENy73wIaGQkRw_BrEL1NqhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'qk29EGvwwxE', 102, 0, 0, 0, 0, 0, 0, 205, 'qk29EGvwwxE.jpg', '735559659', '2013-04-30 03:48:12'),
(131, 'Tourists Fall Into Canal', 'Fail', 'Fail,Girls,People', 'https://www.youtube.com/watch?v=TgX7AAuYhVA&feature=youtube_gdata_player', '1285a8c4597960a6811c77a2e527d5cd', 'rtsp://v5.cache6.c.youtube.com/CiILENy73wIaGQlQhZgLAPsFThMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'TgX7AAuYhVA', 475, 0, 0, 0, 0, 0, 0, 94, 'TgX7AAuYhVA.jpg', '735559659', '2013-04-30 03:50:16'),
(133, 'Ask The Brofessor 2', 'null', 'Science,Workout', 'https://www.youtube.com/watch?v=dvEAZzvXt9A&feature=youtube_gdata_player', '8f22277c483ce0e55e70cb7cccdb4144', 'rtsp://v6.cache6.c.youtube.com/CiILENy73wIaGQnQt9c7ZwDxdhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'dvEAZzvXt9A', 1892, 0, 0, 0, 0, 0, 0, 306, 'dvEAZzvXt9A.jpg', '735559659', '2013-04-30 03:54:49'),
(134, 'Rodeo Slip ''N Slide', 'Awkward', 'Transportation,Hurt', 'https://www.youtube.com/watch?v=NPIbK3B5fCg&feature=youtube_gdata_player', '86c91838130088e61bce8452bbdb9211', 'rtsp://v3.cache8.c.youtube.com/CiILENy73wIaGQkofHlwKxvyNBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'NPIbK3B5fCg', 1299, 0, 0, 0, 0, 0, 0, 101, 'NPIbK3B5fCg.jpg', '735559659', '2013-04-30 03:56:07'),
(136, 'Steve & Brandon Think They Sold A Show: Sketch 101', 'Awkward', 'Transportation', 'https://www.youtube.com/watch?v=5v3WP1VNahw&feature=youtube_gdata_player', '1b28abd55bd7e65bb5c975be94569133', 'rtsp://v4.cache3.c.youtube.com/CiILENy73wIaGQkcak1VP9b95hMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '5v3WP1VNahw', 4, 0, 0, 0, 0, 0, 0, 78, '5v3WP1VNahw.jpg', '735559659', '2013-04-30 03:58:39'),
(137, 'Sauce Boss Music Video', 'Awkward', 'Transportation,Food', 'https://www.youtube.com/watch?v=SSK2SrPU5hs&feature=youtube_gdata_player', 'd72ee7e75ceb86363c9bfe718fc59160', 'rtsp://v5.cache4.c.youtube.com/CiILENy73wIaGQkb5tSzSrYiSRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'SSK2SrPU5hs', 8665, 0, 0, 0, 0, 0, 0, 218, 'SSK2SrPU5hs.jpg', '735559659', '2013-04-30 04:06:09'),
(139, 'Rasputin vs Stalin.  Epic Rap Battles of History Season 2 finale.', 'null', 'Transportation,Pop Culture', 'https://www.youtube.com/watch?v=ZT2z0nrsQ8o&feature=youtube_gdata_player', '91629e17538232d79fd6e311d16508bd', 'rtsp://v3.cache2.c.youtube.com/CiILENy73wIaGQnKQ-x60rM9ZRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'ZT2z0nrsQ8o', 124530, 0, 0, 0, 0, 0, 0, 218, 'ZT2z0nrsQ8o.jpg', '735559659', '2013-04-30 04:15:02'),
(140, 'Adam vs Eve. Epic Rap Battles of History Season 2', 'null', 'Transportation,Pop Culture', 'https://www.youtube.com/watch?v=liLU2tEz7KY&feature=youtube_gdata_player', '0031e75889e956a090814b715c66f8d0', 'rtsp://v3.cache2.c.youtube.com/CiILENy73wIaGQmm7DPR2tQilhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'liLU2tEz7KY', 54255, 0, 0, 0, 0, 0, 0, 124, 'liLU2tEz7KY.jpg', '735559659', '2013-04-30 04:15:20'),
(142, 'The Nicest Person In The World', 'Awkward', 'Gay,Relationships', 'https://www.youtube.com/watch?v=4DlYk6wyN-0&feature=youtube_gdata_player', 'be1de2611ede0d799ad3d8394cf3fb88', 'rtsp://v2.cache8.c.youtube.com/CiILENy73wIaGQntNzKsk1g54BMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '4DlYk6wyN-0', 195, 0, 0, 0, 0, 0, 0, 155, '4DlYk6wyN-0.jpg', '735559659', '2013-04-30 04:18:51'),
(149, 'Best Fails of the Week 4 April 2013', 'Fail', 'Gay,Pranks,People', 'https://www.youtube.com/watch?v=BORJ7TT9NFg&feature=youtube_gdata_player', '53dc0a3ae375fb4ee10039c0d787655b', 'rtsp://v6.cache6.c.youtube.com/CiILENy73wIaGQlYNP007UnkBBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'BORJ7TT9NFg', 7211, 0, 1, 0, 0, 0, 0, 287, 'BORJ7TT9NFg.jpg', '735559659', '2013-04-30 04:21:59'),
(150, 'Seth Rogen = Worst Person in the World', 'Cute', 'Bloopers', 'https://www.youtube.com/watch?v=fBFr7aGdPoo&feature=youtube_gdata_player', '24ccf6227835198aa89ff48831a190f6', 'rtsp://v4.cache5.c.youtube.com/CiILENy73wIaGQmKPp2h7WsRfBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'fBFr7aGdPoo', 691, 0, 0, 0, 0, 0, 0, 219, 'fBFr7aGdPoo.jpg', '735559659', '2013-04-30 04:29:03'),
(151, 'Drive Thru Headless Prank Outtakes', 'Prank', 'Bloopers,Pranks', 'https://www.youtube.com/watch?v=vsjtr2y1eHE&feature=youtube_gdata_player', 'ddd62d5486d0d8d75ead06c0ffd201ea', 'rtsp://v2.cache7.c.youtube.com/CiILENy73wIaGQlxeLVsr-3IvhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'vsjtr2y1eHE', 1016, 0, 0, 0, 0, 0, 0, 206, 'vsjtr2y1eHE.jpg', '735559659', '2013-04-30 04:51:33'),
(153, 'Car SLAMS Into House....TWICE!', 'Fail', 'Bloopers,House', 'https://www.youtube.com/watch?v=v9kh1RxKrfQ&feature=youtube_gdata_player', '8ee497b8b3ab00211085753129ba0adc', 'rtsp://v7.cache2.c.youtube.com/CiILENy73wIaGQn0rUoc1SHZvxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'v9kh1RxKrfQ', 288, 0, 0, 0, 0, 0, 0, 42, 'v9kh1RxKrfQ.jpg', '735559659', '2013-04-30 05:10:16'),
(154, 'Escaped Lion Prank by Tom Mabe', 'Prank', 'Animals', 'https://www.youtube.com/watch?v=hEK7jYRrlqA&feature=youtube_gdata_player', '749708b744ae595da8d0c6993da08ac4', 'rtsp://v3.cache3.c.youtube.com/CiILENy73wIaGQmglmuEjbtChBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'hEK7jYRrlqA', 648, 0, 0, 0, 0, 0, 0, 199, 'hEK7jYRrlqA.jpg', '735559659', '2013-04-30 05:14:43'),
(155, 'Follow me on Twitter @nqtv (Rémi Gaillard)', 'Prank', 'Animals,Bloopers', 'https://www.youtube.com/watch?v=5INQR3EyBAA&feature=youtube_gdata_player', '5e367051beb9bd000d12f10a75c4f546', 'rtsp://v1.cache5.c.youtube.com/CiILENy73wIaGQkABDJxR1CD5BMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '5INQR3EyBAA', 90605, 0, 0, 0, 0, 0, 0, 216, '5INQR3EyBAA.jpg', '735559659', '2013-04-30 05:26:35'),
(156, 'Rémi Gaillard to sue a Kangaroo for Copyright Infringement', 'Cute', 'Animals,People', 'https://www.youtube.com/watch?v=KoZNw_XPXf4&feature=youtube_gdata_player', '3ff1361831a24d7b06993bf1e0c1bbe5', 'rtsp://v5.cache4.c.youtube.com/CiILENy73wIaGQn-Xc_1w02GKhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'KoZNw_XPXf4', 7192, 0, 0, 0, 0, 0, 0, 21, 'KoZNw_XPXf4.jpg', '735559659', '2013-04-30 05:27:49'),
(157, 'Condom Snorting Challenge: Girl snorts condom up her nose', 'Awkward', 'Girls,Hurt', 'https://www.youtube.com/watch?v=STUX2EB4GsI&feature=youtube_gdata_player', 'af6915e7a57ef18b4c82706c7ce3e461', 'rtsp://v2.cache8.c.youtube.com/CiILENy73wIaGQnCGnhA2Bc1SRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'STUX2EB4GsI', 891, 0, 0, 0, 0, 0, 0, 142, 'STUX2EB4GsI.jpg', '100002539190958', '2013-04-30 08:23:08'),
(158, 'Condom snorting - fail', 'Fail', 'Hurt', 'https://www.youtube.com/watch?v=UZtFfGyZRho&feature=youtube_gdata_player', '4ff2462a67ab5cd6ac35d12e4cdb3b2d', 'rtsp://v1.cache1.c.youtube.com/CiILENy73wIaGQkaRplsfEWbURMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'UZtFfGyZRho', 22, 0, 0, 0, 0, 0, 0, 111, 'UZtFfGyZRho.jpg', '100002539190958', '2013-04-30 08:30:03'),
(159, 'Jokes From The...Office with Owen Benjamin: Owen Takes On Racism', 'undefined', '', 'https://www.youtube.com/watch?v=S8cAs13hQds&feature=youtube_gdata_player', '3681e0763b0277460db60544a4cd64c7', 'rtsp://v4.cache4.c.youtube.com/CiILENy73wIaGQnbQeFdswDHSxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'S8cAs13hQds', 23, 0, 0, 0, 0, 0, 0, 104, 'S8cAs13hQds.jpg', '735559659', '2013-05-01 05:10:16'),
(160, 'Tyler The Creator Mountain Dew Commercial Part 3', 'Awkward', 'Animals,People', 'https://www.youtube.com/watch?v=sgUDlXDXZtQ&feature=youtube_gdata_player', '01b5445983129fec8e301151d0d82ad4', 'rtsp://v7.cache8.c.youtube.com/CiILENy73wIaGQnUZtdwlQMFshMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'sgUDlXDXZtQ', 548, 0, 0, 0, 0, 0, 0, 59, 'sgUDlXDXZtQ.jpg', '735559659', '2013-05-01 18:14:33'),
(161, 'Justin Bieber Gets Attacked in Dubai Concert May 5th .', 'Fail', 'Celebrity,Pop Culture', 'https://www.youtube.com/watch?v=ZDtywoH_zjg&feature=youtube_gdata_player', 'b75a8e42b8d8dbf2ed641b5d11576d2d', 'rtsp://v2.cache5.c.youtube.com/CiILENy73wIaGQk4zv-BwnI7ZBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'ZDtywoH_zjg', 39447, 0, 0, 0, 0, 0, 0, 18, 'ZDtywoH_zjg.jpg', '735559659', '2013-05-07 17:49:44'),
(162, 'Reggie Watts - 7 Minutes in Heaven', 'Cute', 'Celebrity,Pop Culture', 'https://www.youtube.com/watch?v=H4RGTSnoWLg&feature=youtube_gdata_player', 'd2f369759631300999f513cc1f0f8a5a', 'rtsp://v5.cache7.c.youtube.com/CiILENy73wIaGQm4WOgpTUaEHxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'H4RGTSnoWLg', 359, 0, 0, 0, 0, 0, 0, 259, 'H4RGTSnoWLg.jpg', '735559659', '2013-05-07 18:07:37'),
(164, '"The Walking (And Talking) Dead" — A Bad Lip Reading of The Walking Dead', 'Awkward', 'Hurt,Bloopers', 'https://www.youtube.com/watch?v=jR4lLJu_-wE&feature=youtube_gdata_player', 'ae0c12f4271c900501c70eb25d29262e', 'rtsp://v3.cache7.c.youtube.com/CiILENy73wIaGQkB-7-bLCUejRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'jR4lLJu_-wE', 15944, 0, 0, 0, 0, 0, 0, 336, 'jR4lLJu_-wE.jpg', '735559659', '2013-05-07 18:24:27'),
(165, 'How To Get Girls To Kiss You.', 'Sexy', 'Beach,Relationships', 'https://www.youtube.com/watch?v=RTuBf4BrIgE&feature=youtube_gdata_player', '3b09fdf49ee9bda3a3a2b36e6255718a', 'rtsp://r4---sn-p5qlsu76.c.youtube.com/CiILENy73wIaGQkBImuAf4E7RRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'RTuBf4BrIgE', 5793, 0, 0, 0, 0, 0, 0, 186, 'RTuBf4BrIgE.jpg', '735559659', '2013-05-07 18:46:29'),
(166, 'Secret Message Prank ( Explicit Language )', 'Prank', 'People', 'https://www.youtube.com/watch?v=d8ZRZYy0_8Q&feature=youtube_gdata_player', '95935533dc9083beae2a4240736b6958', 'rtsp://v7.cache4.c.youtube.com/CiILENy73wIaGQnE_7SMZVHGdxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'd8ZRZYy0_8Q', 171, 0, 0, 0, 0, 0, 0, 199, 'd8ZRZYy0_8Q.jpg', '735559659', '2013-05-07 19:14:48'),
(167, 'Baby Duck Can''t Stay Awake', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=LGrpsZ7BsQA&feature=youtube_gdata_player', '57cb3cad16a3a218c38b9450bea09887', 'rtsp://v7.cache2.c.youtube.com/CiILENy73wIaGQkAscGeselqLBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'LGrpsZ7BsQA', 65119, 0, 0, 0, 0, 0, 0, 44, 'LGrpsZ7BsQA.jpg', '735559659', '2013-05-08 22:09:17'),
(168, 'Funny evasive cat (fear does have big eyes).', 'Awkward', 'Animals', 'https://www.youtube.com/watch?v=-xYeTjeGZ3Q&feature=youtube_gdata_player', '0c612cfe0d831b0ef91956a4fe9e14ac', 'rtsp://v3.cache8.c.youtube.com/CiILENy73wIaGQl0Z4Y3Th4W-xMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '-xYeTjeGZ3Q', 1, 0, 0, 0, 0, 0, 0, 46, '-xYeTjeGZ3Q.jpg', '735559659', '2013-05-14 02:02:50'),
(169, 'Bikini Girl Pool Throw Fail', 'Sexy', 'Beach', 'https://www.youtube.com/watch?v=Bes4RkgHgog&feature=youtube_gdata_player', '81390b4d0527777375c790f187c01892', 'rtsp://v8.cache4.c.youtube.com/CiILENy73wIaGQmIggdIRjjrBRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'Bes4RkgHgog', 2749, 0, 0, 0, 0, 0, 0, 36, 'Bes4RkgHgog.jpg', '735559659', '2013-05-21 01:08:14'),
(170, 'YouTube Through History - Comedy Week', 'undefined', '', 'https://www.youtube.com/watch?v=riPN9DbO9Rg&feature=youtube_gdata_player', '01197fe4500338c496fe8e631183eb91', 'rtsp://v7.cache3.c.youtube.com/CiILENy73wIaGQkY9c429M0jrhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'riPN9DbO9Rg', 2748, 0, 0, 0, 0, 0, 0, 272, 'riPN9DbO9Rg.jpg', '735559659', '2013-05-21 01:45:51'),
(171, 'bikini fights', 'Sexy', 'Beach', 'https://www.youtube.com/watch?v=Rb4UaAFe8M0&feature=youtube_gdata_player', '88d1b7769a33395c118faac62a106164', 'rtsp://v7.cache7.c.youtube.com/CiILENy73wIaGQnN8F4BaBS-RRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'Rb4UaAFe8M0', 0, 0, 0, 0, 0, 0, 0, 67, 'Rb4UaAFe8M0.jpg', '735559659', '2013-05-21 09:38:25'),
(173, 'Bikini girl pool FAIL', 'Sexy', 'Beach', 'https://www.youtube.com/watch?v=4r9Qa_WbFlM&feature=youtube_gdata_player', '8b5607a2a171b518dfa53a7a8a6de699', 'rtsp://r4---sn-p5qlsu7k.c.youtube.com/CiILENy73wIaGQlTFpv1a1C_4hMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '4r9Qa_WbFlM', 0, 0, 0, 0, 0, 0, 0, 66, '4r9Qa_WbFlM.jpg', '735559659', '2013-05-21 09:43:05'),
(174, 'Funny baby - just for fun', 'Sexy', 'Beach', 'https://www.youtube.com/watch?v=Csdo3t5f30M&feature=youtube_gdata_player', '951359469caa4c6165f79f757191db85', 'rtsp://v4.cache4.c.youtube.com/CiILENy73wIaGQlD31_e3mjHChMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'Csdo3t5f30M', 25, 0, 0, 0, 0, 0, 0, 26, 'Csdo3t5f30M.jpg', '735559659', '2013-05-21 09:45:54'),
(176, 'PSY - GENTLEMAN PARODY', 'Awkward', 'Gay', 'https://www.youtube.com/watch?v=N49hOi4jF7o&feature=youtube_gdata_player', '0e429fa03f3ada76a65eb0f939f5d1ec', 'rtsp://r3---sn-p5qlsu7s.c.youtube.com/CiILENy73wIaGQm6FyMuOmGPNxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'N49hOi4jF7o', 16378, 0, 0, 0, 0, 0, 0, 222, 'N49hOi4jF7o.jpg', '100005865160362', '2013-05-28 04:35:48'),
(178, 'Synchronize!! FIVE ocicat kittens', 'undefined', '', 'https://www.youtube.com/watch?v=rq4XfXwilh8&feature=youtube_gdata_player', '6fc300374cc61cc5cf7ae9b7a018990f', 'rtsp://r6---sn-p5qlsu7k.c.youtube.com/CiILENy73wIaGQkfliJ8fReurhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'rq4XfXwilh8', 1, 0, 0, 0, 0, 0, 0, 65, 'rq4XfXwilh8.jpg', '735559659', '2013-06-05 00:36:48'),
(179, '2013 Miss Utah Marissa Powell Messes Up Miss USA Question Big Time!', 'Sexy', 'Celebrity', 'https://www.youtube.com/watch?v=jHEFIhdkgFA&feature=youtube_gdata_player', '9900aee89f33d860ee7b34e97dad7982', 'rtsp://v8.cache4.c.youtube.com/CiILENy73wIaGQlQgGQXIgVxjBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'jHEFIhdkgFA', 5126, 0, 0, 0, 0, 0, 0, 66, 'jHEFIhdkgFA.jpg', '735559659', '2013-06-18 03:28:23'),
(180, 'Street Workout With Kali Muscle', 'Sexy', 'Celebrity', 'https://www.youtube.com/watch?v=mEcubbF3kI8&feature=youtube_gdata_player', '314c3b710b2a61ae0787809d4c891a44', 'rtsp://v3.cache2.c.youtube.com/CiILENy73wIaGQmPkHexbS5HmBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'mEcubbF3kI8', 3961, 0, 0, 0, 0, 0, 0, 313, 'mEcubbF3kI8.jpg', '735559659', '2013-06-18 03:59:38'),
(182, 'CoP - Flaming Dash', 'Sexy', 'Celebrity', 'https://www.youtube.com/watch?v=7oIqRcaSmm8&feature=youtube_gdata_player', '2739ca90eeef797bb36d03a399c77f0c', 'rtsp://v6.cache4.c.youtube.com/CiILENy73wIaGQlvmpLGRSqC7hMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '7oIqRcaSmm8', 50, 0, 0, 0, 0, 0, 0, 70, '7oIqRcaSmm8.jpg', '735559659', '2013-06-18 03:59:54'),
(183, 'Mr Rogers Breakdancing', 'Awkward', 'Celebrity', 'https://www.youtube.com/watch?v=Fw_GnjE-des&feature=youtube_gdata_player', '84d2ff02affe427eafd1ec7d1744100a', 'rtsp://r6---sn-p5qlsu7z.c.youtube.com/CiILENy73wIaGQnrdT4xnsYPFxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'Fw_GnjE-des', 27769, 0, 0, 0, 0, 0, 0, 265, 'Fw_GnjE-des.jpg', '735559659', '2013-06-18 04:27:05'),
(184, 'Cute Funny Animal Videos - Funny Horse', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=2ouwC5HJ5ao&feature=youtube_gdata_player', 'd823ddb6498833a126ae47d909795d8f', 'rtsp://v1.cache4.c.youtube.com/CiILENy73wIaGQmq5cmRC7CL2hMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '2ouwC5HJ5ao', 0, 0, 0, 0, 0, 0, 0, 44, '2ouwC5HJ5ao.jpg', '735559659', '2013-06-18 04:57:39'),
(185, 'Thirsty monkey buys himself a dring in vending machine', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=HPyZ7XbTNJ8&feature=youtube_gdata_player', '13868f9a3760a59652249d25dde5b069', 'rtsp://v3.cache4.c.youtube.com/CiILENy73wIaGQmfNNN27Zn8HBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'HPyZ7XbTNJ8', 1068, 0, 0, 0, 0, 0, 0, 80, 'HPyZ7XbTNJ8.jpg', '735559659', '2013-06-18 05:15:14'),
(186, 'Drunk texting fail - Download 2013', 'Awkward', 'Fail', 'https://www.youtube.com/watch?v=Q9nE3d8oMUQ&feature=youtube_gdata_player', '4f16c088a21850266dbbc7ee551107ed', 'rtsp://r8---sn-p5qlsu7z.c.youtube.com/CiILENy73wIaGQlEMSjf3cTZQxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'Q9nE3d8oMUQ', 7, 0, 0, 0, 0, 0, 0, 57, 'Q9nE3d8oMUQ.jpg', '735559659', '2013-06-19 06:15:26'),
(187, 'Funny Fail,I love Tru TV.', 'Sexy', 'Fail,Girls', 'https://www.youtube.com/watch?v=8A_eW86pMa0&feature=youtube_gdata_player', '53183ede64ab68ea4ea1150f49ee4c12', 'rtsp://r6---sn-p5qlsu7k.c.youtube.com/CiILENy73wIaGQmtManOW94P8BMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '8A_eW86pMa0', 2, 0, 0, 0, 0, 0, 0, 43, '8A_eW86pMa0.jpg', '735559659', '2013-06-19 06:21:24'),
(188, 'NINJA Cat protecting his box!', 'Silent', 'Animals', 'https://www.youtube.com/watch?v=-ZJV895eAJs&feature=youtube_gdata_player', 'b93965d4a54b5ddd383570e151778a99', 'rtsp://v8.cache5.c.youtube.com/CiILENy73wIaGQmbAF7e81WS-RMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '-ZJV895eAJs', 205, 0, 0, 0, 0, 0, 0, 78, '-ZJV895eAJs.jpg', '735559659', '2013-06-19 06:44:49'),
(191, 'Big Black Rooster Scares Reporter', 'Fail', 'Animals', 'https://www.youtube.com/watch?v=2AdrmfjAhn0&feature=youtube_gdata_player', '31ccec178cc55f75bb30118b40b1a7a2', 'rtsp://r6---sn-p5qlsu7z.c.youtube.com/CiILENy73wIaGQl9hsD4mWsH2BMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '2AdrmfjAhn0', 946, 0, 0, 0, 0, 0, 0, 15, '2AdrmfjAhn0.jpg', '735559659', '2013-06-19 06:50:06'),
(195, 'Wiretapping The Government Prank!!', 'Awkward', 'Animals', 'https://www.youtube.com/watch?v=q3kEHO128PQ&feature=youtube_gdata_player', '5490dd07d35d970cb825040bac878c58', 'rtsp://v4.cache1.c.youtube.com/CiILENy73wIaGQn08HbtHAR5qxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'q3kEHO128PQ', 3959, 0, 0, 0, 0, 0, 0, 69, 'q3kEHO128PQ.jpg', '735559659', '2013-06-19 06:53:34'),
(197, 'Urban Referee Round 2 ( Prank )', 'Prank', 'Animals,People', 'https://www.youtube.com/watch?v=WTPCkm2zPl8&feature=youtube_gdata_player', 'e38f7af1c0c0e0c437c17ecdba96a612', 'rtsp://v5.cache1.c.youtube.com/CiILENy73wIaGQlfPrNtksIzWRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'WTPCkm2zPl8', 31, 0, 0, 0, 0, 0, 0, 235, 'WTPCkm2zPl8.jpg', '735559659', '2013-06-19 07:01:55'),
(198, 'Champagne !!', 'Sexy', 'Girls', 'https://www.youtube.com/watch?v=byqAnqO2gCA&feature=youtube_gdata_player', '3bf583a256f8f77b3db800ed391a5185', 'rtsp://v8.cache4.c.youtube.com/CiILENy73wIaGQkggLajnoAqbxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'byqAnqO2gCA', 0, 0, 0, 0, 0, 0, 0, 133, 'byqAnqO2gCA.jpg', '735559659', '2013-06-26 02:26:58'),
(199, 'Adorable Puppy Battles Dandelion! Super Cute!!!', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=yQ4Owo98FTI&feature=youtube_gdata_player', '56af9dbffc8f6af46ea3f5d72a083b13', 'rtsp://r16---sn-ab5e6nle.c.youtube.com/CiILENy73wIaGQkyFXyPwg4OyRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'yQ4Owo98FTI', 0, 0, 0, 0, 0, 0, 0, 89, 'yQ4Owo98FTI.jpg', '735559659', '2013-06-26 03:02:57'),
(200, '箱とねこ８。-A box and Maru 8.-', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=TbiedguhyvM&feature=youtube_gdata_player', '2770ad0ca8a44c3ce4d76e0f4c7bbefd', 'rtsp://v7.cache2.c.youtube.com/CiILENy73wIaGQnzyqELdp64TRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'TbiedguhyvM', 139905, 0, 0, 0, 0, 0, 0, 83, 'TbiedguhyvM.jpg', '735559659', '2013-06-26 03:31:11'),
(203, 'Kitten Vs Stairs Funny Video', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=bxskigaZ6BY&feature=youtube_gdata_player', 'f2a023d961d36c96e872ae9f4c283182', 'rtsp://v6.cache5.c.youtube.com/CiILENy73wIaGQkW6JkGiiQbbxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'bxskigaZ6BY', 0, 0, 0, 0, 0, 0, 0, 13, 'bxskigaZ6BY.jpg', '735559659', '2013-06-26 03:38:41'),
(204, 'Shake That, Baby', 'Awkward', 'Girls', 'https://www.youtube.com/watch?v=weXShsX3-FI&feature=youtube_gdata_player', '03dc6930bc4fcd1f53c237666e44ead3', 'rtsp://v2.cache4.c.youtube.com/CiILENy73wIaGQlS-PfFhtLlwRMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'weXShsX3-FI', 58, 0, 0, 0, 0, 0, 0, 139, 'weXShsX3-FI.jpg', '735559659', '2013-06-26 03:44:53'),
(207, 'The Farting Chair', 'Awkward', 'Girls,Pranks', 'https://www.youtube.com/watch?v=nOC4FreJuAA&feature=youtube_gdata_player', '0290841a396d3c5d50d47d7e39e70f8a', 'rtsp://v7.cache7.c.youtube.com/CiILENy73wIaGQkAuIm3FrjgnBMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'nOC4FreJuAA', 249, 0, 0, 0, 0, 0, 0, 137, 'nOC4FreJuAA.jpg', '735559659', '2013-06-26 04:04:36'),
(209, 'CoP - Cactus Dodgeball', 'Awkward', 'Girls,Pranks', 'https://www.youtube.com/watch?v=24xeMUpvwCY&feature=youtube_gdata_player', '16c2586659b58cfbf3a04fb2f42287aa', 'rtsp://v5.cache6.c.youtube.com/CiILENy73wIaGQkmwG9KMV6M2xMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '24xeMUpvwCY', 453, 0, 0, 0, 0, 0, 0, 237, '24xeMUpvwCY.jpg', '735559659', '2013-06-26 04:05:18'),
(212, 'Cat, and the furball-seeking vacuum cleaner', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=1RiuNifuxfU&feature=youtube_gdata_player', '0a37a53e765e7168712253b2954c7693', 'rtsp://r5---sn-ab5e6nlz.c.youtube.com/CiILENy73wIaGQn1xe4nNq4Y1RMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '1RiuNifuxfU', 0, 0, 0, 0, 0, 0, 0, 238, '1RiuNifuxfU.jpg', '735559659', '2013-06-29 20:11:20'),
(213, 'Кот и пылесос / Cat and vacuum cleaner', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=ax1MtQEjidE&feature=youtube_gdata_player', '66bb2585422b6b6d5ec92d89991f6884', 'rtsp://r13---sn-ab5e6nl7.c.youtube.com/CiILENy73wIaGQnRiSMBtUwdaxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'ax1MtQEjidE', 0, 0, 0, 0, 0, 0, 0, 144, 'ax1MtQEjidE.jpg', '735559659', '2013-06-29 20:11:33'),
(216, 'Кот и пылесос', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=M9ycFnR_V4I&feature=youtube_gdata_player', '180d8423c1c98e5a4dc9ceb49fe75504', 'rtsp://v3.cache5.c.youtube.com/CiILENy73wIaGQmCV390FpzcMxMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'M9ycFnR_V4I', 0, 0, 0, 0, 0, 0, 0, 38, 'M9ycFnR_V4I.jpg', '735559659', '2013-06-29 20:11:44'),
(217, '-DeXter- La Perm Captain of the ROOMBA', 'Cute', 'Animals', 'https://www.youtube.com/watch?v=Ep80TSVQe70&feature=youtube_gdata_player', '4b0d6932606e8e9b91f3622bcca0e74c', 'rtsp://v4.cache6.c.youtube.com/CiILENy73wIaGQm9e1AlTTSfEhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'Ep80TSVQe70', 0, 0, 0, 0, 0, 0, 0, 95, 'Ep80TSVQe70.jpg', '735559659', '2013-06-29 20:12:04'),
(220, 'Naked and Funny - Oops My Boobs falling Out', 'Sexy', 'Girls', 'https://www.youtube.com/watch?v=rmqM7JpEtlo&feature=youtube_gdata_player', 'c0f2c5be0f6b2cbf306037cbb5781e39', 'rtsp://r15---sn-ab5e6nld.c.youtube.com/CiILENy73wIaGQlatkSa7IxqrhMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', 'rmqM7JpEtlo', 0, 0, 0, 0, 0, 0, 0, 128, 'rmqM7JpEtlo.jpg', '735559659', '2013-07-01 17:09:38');
INSERT INTO `video` (`video`, `title`, `category`, `tag`, `url`, `url_md5`, `rtsp`, `youtubeID`, `score`, `upvote`, `downvote`, `fb-shares`, `fb-like`, `fb-click-through`, `tweets`, `duration`, `thumbnail`, `twfbUserID`, `date_added`) VALUES
(221, 'How to Get A Girl To Flash You', 'Sexy', 'Bloopers', 'https://www.youtube.com/watch?v=5m-2kvI1AOc&feature=youtube_gdata_player', 'd1089e4a3cd2c98fbcc1ec28d3b4f4e8', 'rtsp://v8.cache4.c.youtube.com/CiILENy73wIaGQnnADXykrZv5hMYESARFEgGUgZ2aWRlb3MM/0/0/0/video.3gp', '5m-2kvI1AOc', 0, 0, 0, 0, 0, 0, 0, 122, '5m-2kvI1AOc.jpg', '735559659', '2013-07-01 17:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `videoID` int(11) NOT NULL,
  `twfbUserID` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`videoID`,`twfbUserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`videoID`, `twfbUserID`, `type`) VALUES
(1, '100002539190958', 0),
(1, '592675360', 1),
(1, '735559659', 1),
(2, '100002539190958', 0),
(2, '592675360', 1),
(2, '735559659', 1),
(3, '100002539190958', 1),
(3, '592675360', 1),
(3, '735559659', 0),
(5, '100002539190958', 0),
(5, '735559659', 0),
(6, '100002539190958', 1),
(6, '735559659', 1),
(7, '100002539190958', 1),
(7, '735559659', 1),
(8, '735559659', 0),
(9, '100002539190958', 1),
(9, '735559659', 0),
(10, '100002539190958', 1),
(10, '735559659', 0),
(12, '100002539190958', 0),
(14, '100002539190958', 1),
(14, '1065415314', 1),
(14, '735559659', 1),
(14, '817865243', 1),
(15, '100002539190958', 1),
(15, '735559659', 1),
(16, '100002539190958', 0),
(16, '100004694193358', 0),
(17, '100002539190958', 1),
(18, '100002539190958', 1),
(19, '100002539190958', 0),
(19, '592675360', 1),
(19, '735559659', 1),
(22, '100002539190958', 1),
(22, '735559659', 1),
(23, '100002539190958', 0),
(23, '817865243', 1),
(31, '100002539190958', 1),
(31, '735559659', 1),
(32, '100002539190958', 1),
(32, '735559659', 0),
(35, '100002539190958', 1),
(35, '735559659', 1),
(37, '100002539190958', 1),
(48, '817865243', 1),
(49, '100002539190958', 1),
(49, '735559659', 1),
(58, '100002539190958', 0),
(61, '735559659', 1),
(67, '551480625', 1),
(117, '817865243', 1),
(149, '735559659', 0);

-- --------------------------------------------------------

--
-- Table structure for table `youtube_user`
--

CREATE TABLE IF NOT EXISTS `youtube_user` (
  `yt_username` varchar(20) NOT NULL,
  PRIMARY KEY (`yt_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `youtube_user`
--

INSERT INTO `youtube_user` (`yt_username`) VALUES
('aboveaveragenetwork'),
('AdrianVanOyen'),
('apetor'),
('badadsfromchris'),
('badlipreading'),
('break'),
('brosciencelife'),
('childrenofposeidon'),
('collegehumor'),
('comedycentral'),
('dj lubel'),
('dommazzetti'),
('epicmealtime'),
('erb'),
('extremelydecentfilms'),
('failarmy'),
('failblog'),
('funnyordie'),
('jacksfilms'),
('jackvalefilms'),
('jeepersmedia'),
('jukinvideodotcom'),
('kevjumba'),
('mabeinamerica'),
('mediocrefilms'),
('nicepeter'),
('nigahiga'),
('nqtv'),
('overboardhumor'),
('pranks'),
('prankvsprank'),
('publicprank'),
('raywilliamjohnson'),
('realannoyingorange'),
('romanatwood'),
('shaycarl'),
('simple minded people'),
('simplepickup'),
('slusho'),
('thatcherjoe'),
('thefinebros'),
('timothydelaghetto2'),
('tobuscus'),
('vitalyzdtv');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
