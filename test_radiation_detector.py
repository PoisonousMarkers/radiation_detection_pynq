#!/usr/bin/env python3
"""
PYNQ Radiation Detector Test Script
Load and test the radiation detector overlay
"""

import time
import numpy as np
from pynq import Overlay, allocate
import matplotlib.pyplot as plt

def test_radiation_detector():
    """Test the radiation detector overlay"""
    
    print("🚀 Loading Radiation Detector Overlay...")
    
    try:
        # Load the overlay
        overlay = Overlay('./overlays/radiation_detector_top.bit')
        print(f"✅ Overlay loaded successfully!")
        print(f"Available IP blocks: {list(overlay.ip_dict.keys())}")
        
        # If using a simplified version, the detector will run automatically
        print("\n📊 Monitoring radiation detection...")
        
        # Monitor for a few seconds
        detection_count = 0
        start_time = time.time()
        
        for i in range(10):
            print(f"Monitoring cycle {i+1}/10...")
            time.sleep(1)
            
            # In the simplified version, we can't read registers directly
            # but the alert LED should be blinking when radiation is detected
            print(f"  Time: {time.time() - start_time:.1f}s")
        
        print("\n✅ Test completed!")
        print("Check the alert LED on your PYNQ board - it should blink when radiation events are detected")
        
        return True
        
    except FileNotFoundError:
        print("❌ Error: Bitstream file not found!")
        print("Please copy the bitstream to ./overlays/radiation_detector_top.bit")
        return False
        
    except Exception as e:
        print(f"❌ Error loading overlay: {e}")
        return False

def create_simulation_plot():
    """Create a simulation plot of expected radiation detection"""
    print("\n📈 Creating simulation visualization...")
    
    # Simulate radiation detection data
    time_points = np.linspace(0, 10, 1000)  # 10 seconds
    
    # Background radiation (Poisson process)
    background_rate = 50  # events per second
    background = np.random.poisson(background_rate/100, 1000)
    
    # Add some radiation spikes
    spikes = np.zeros(1000)
    spike_times = [200, 400, 600, 800]  # spike positions
    for spike_time in spike_times:
        if spike_time < 1000:
            spikes[spike_time:spike_time+20] = np.random.exponential(100, 20)
    
    # Total signal
    radiation_signal = background + spikes
    
    # Create the plot
    plt.figure(figsize=(12, 8))
    
    plt.subplot(2, 1, 1)
    plt.plot(time_points, radiation_signal, 'b-', alpha=0.7, linewidth=1)
    plt.title('Simulated Radiation Detection Signal')
    plt.ylabel('Radiation Level (ADC counts)')
    plt.grid(True, alpha=0.3)
    
    plt.subplot(2, 1, 2)
    # Event detection (threshold at 200)
    threshold = 200
    events = radiation_signal > threshold
    event_times = time_points[events]
    event_levels = radiation_signal[events]
    
    plt.plot(time_points, radiation_signal, 'b-', alpha=0.5, label='Signal')
    plt.axhline(y=threshold, color='r', linestyle='--', label=f'Threshold ({threshold})')
    plt.scatter(event_times, event_levels, color='red', s=30, alpha=0.8, label='Detected Events')
    
    plt.title('Radiation Event Detection')
    plt.xlabel('Time (seconds)')
    plt.ylabel('Radiation Level (ADC counts)')
    plt.legend()
    plt.grid(True, alpha=0.3)
    
    plt.tight_layout()
    plt.savefig('radiation_detection_simulation.png', dpi=150, bbox_inches='tight')
    print("📊 Simulation plot saved as 'radiation_detection_simulation.png'")
    
    # Show statistics
    total_events = len(event_times)
    event_rate = total_events / 10  # events per second
    print(f"\n📈 Simulation Statistics:")
    print(f"   Total events detected: {total_events}")
    print(f"   Average event rate: {event_rate:.1f} events/second")
    print(f"   Detection threshold: {threshold} ADC counts")

if __name__ == "__main__":
    print("🔬 PYNQ Radiation Detector Test")
    print("=" * 40)
    
    # Test the overlay
    success = test_radiation_detector()
    
    # Create simulation visualization
    create_simulation_plot()
    
    if success:
        print("\n🎉 Next steps:")
        print("1. Check the alert LED on your PYNQ board")
        print("2. The radiation detector is running with simulated data")
        print("3. Events above threshold will trigger the alert")
        print("4. View the simulation plot: radiation_detection_simulation.png")
    else:
        print("\n🔧 Troubleshooting:")
        print("1. Ensure the bitstream file is in ./overlays/")
        print("2. Check that your PYNQ board is connected")
        print("3. Verify the overlay loaded without errors") 