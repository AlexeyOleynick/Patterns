<?php
	require_once '/../observer/IObserver.php';
	
	interface ISubject{
		function registerObserver(IObserver $observer);
		function removeObserver(IObserver $observer);
		function notifyObservers();
	}
